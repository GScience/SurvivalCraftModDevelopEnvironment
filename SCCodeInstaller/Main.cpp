
#define _CRT_SECURE_NO_WARNINGS
#include "ILProgram.h"
#include <iostream>
#include <string>
#include <direct.h>
#include <fstream>
#include <Windows.h>
#include <sstream>

using namespace std;

bool devideILCode(const char* file, const char* ilClassPath);
bool combineILCode(const char* ilClassPath, const char* ilFile);
bool replaceFile(const char* from, const char* to);
void saveFile(const char* file, string classILCode);

int main(int argc, char* argv[])
{
	string sourcePath;
	string additionCodePath;

	//�޲���
	if (argc == 1)
	{
		cout << "������SurvivalCraft IL�ļ�λ��" << endl;
		cin >> sourcePath;
		cout << "�����븽�ӵ�Դ���λ��" << endl;
		cin >> additionCodePath;
	}
	else if (argc == 3)
	{
		sourcePath = argv[1];
		additionCodePath = argv[2];
	}
	else
	{
		cout << "��������SCCodeInstaller <sourcePath> <additionCodePath> <tmpPath>" << endl;
	}

	//��ȡ�ֽ���Ŀ¼
	string survivalCraftCodeDir = sourcePath.substr(0, sourcePath.find_last_of("."));
	string additionCodeDir = additionCodePath.substr(0, additionCodePath.find_last_of("."));

	if (_mkdir((survivalCraftCodeDir + "_old").c_str()) != -1)
		devideILCode(sourcePath.c_str(), (survivalCraftCodeDir + "_old").c_str());

	system(((string)"xcopy " + survivalCraftCodeDir + "_old " + survivalCraftCodeDir + "/y /s /i").c_str());

	_mkdir(additionCodeDir.c_str());
	devideILCode(additionCodePath.c_str(), additionCodeDir.c_str());

	ILProgram survivalCraftProgram = ILProgram(survivalCraftCodeDir.c_str());
	ILProgram additionProgram = ILProgram(additionCodeDir.c_str());

	//�滻��
	short totalClassCount = (short)survivalCraftProgram.getClassList().size();

	for (auto additionClass : additionProgram.getClassList())
	{
		short survivalCraftClassID = survivalCraftProgram.getClassID(additionClass);

		if (survivalCraftClassID != -1)
		{
			//�滻��
			short toClassID = survivalCraftClassID;
			short fromClassID = additionProgram.getClassID(additionClass);
			string toClassIDString;
			string fromClassIDString;

			char s[12];
			_itoa(toClassID, s, 10);
			toClassIDString = s;

			_itoa(fromClassID, s, 10);
			fromClassIDString = s;

			replaceFile((additionCodeDir + "\\[Class]" + fromClassIDString + ".il").c_str(), (survivalCraftCodeDir + "\\[Class]" + toClassIDString + ".il").c_str());
		}
		else
		{
			//д������
			short toClassID = totalClassCount++;
			short fromClassID = additionProgram.getClassID(additionClass);
			string toClassIDString;
			string fromClassIDString;

			char s[12];
			_itoa(toClassID, s, 10);
			toClassIDString = s;

			_itoa(fromClassID, s, 10);
			fromClassIDString = s;

			replaceFile((additionCodeDir + "\\[Class]" + fromClassIDString + ".il").c_str(), (survivalCraftCodeDir + "\\[Class]" + toClassIDString + ".il").c_str());

			ofstream ilHead = ofstream(survivalCraftCodeDir + "\\[ClassList].cl", ios::app);
			ilHead << "\n" << toClassID << " " << additionClass;


			ilHead.close();
		}
	}
	
	//�������
	vector<string> assemblys;
	string additionHead;

	for (auto additionAssemblyExtern : additionProgram.getAssemblyExternList())
	{
		//û�еĻ�����
		if (additionAssemblyExtern != "Survivalcraft" && find(survivalCraftProgram.getAssemblyExternList().cbegin(), survivalCraftProgram.getAssemblyExternList().cend(), additionAssemblyExtern) == survivalCraftProgram.getAssemblyExternList().cend())
		{
			assemblys.push_back(additionAssemblyExtern);
		}
	}
	
	ifstream additionHeadFile;
	additionHeadFile.open(additionCodeDir + "\\[Head].il");
	
	while (!additionHeadFile.eof())
	{
		char tmpBuffer[2048];
		additionHeadFile.getline(tmpBuffer, 2048, '\n');
		stringstream line = stringstream(tmpBuffer);

		string operatorCode;
		line >> operatorCode;
		if (operatorCode == ".assembly")
		{
			line >> operatorCode;
			if (operatorCode == "extern")
			{
				line >> operatorCode;
				
				//û�д����ڸ��ӵ��б��еĻ�����
				if (find(assemblys.begin(), assemblys.end(), operatorCode) == assemblys.end())
					continue;

				while (tmpBuffer[0] != '}')
				{
					additionHead += tmpBuffer;
					additionHead += "\n";
					additionHeadFile.getline(tmpBuffer, 2048, '\n');
				}
				additionHead += "}";
			}
		}
	}
	
	additionHeadFile.close();
	
	ifstream scHeadFile;
	scHeadFile.open(survivalCraftCodeDir + "\\[Head].il");

	string newHead;

	while (!scHeadFile.eof())
	{
		char tmpBuffer[2048];
		scHeadFile.getline(tmpBuffer, 2048, '\n');
		newHead += tmpBuffer;
		newHead += "\n";
	}
	scHeadFile.close();
	
	newHead += additionHead;

	saveFile((survivalCraftCodeDir + "\\[Head].il").c_str(), newHead);
	
	combineILCode(survivalCraftCodeDir.c_str(), (sourcePath + ".patch").c_str());
}