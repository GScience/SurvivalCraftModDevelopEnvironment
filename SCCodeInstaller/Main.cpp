
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

	//无参数
	if (argc == 1)
	{
		cout << "请输入SurvivalCraft IL文件位置" << endl;
		cin >> sourcePath;
		cout << "请输入附加的源码的位置" << endl;
		cin >> additionCodePath;
	}
	else if (argc == 3)
	{
		sourcePath = argv[1];
		additionCodePath = argv[2];
	}
	else
	{
		cout << "参数错误：SCCodeInstaller <sourcePath> <additionCodePath> <tmpPath>" << endl;
	}

	//获取分解后的目录
	string survivalCraftCodeDir = sourcePath.substr(0, sourcePath.find_last_of("."));
	string additionCodeDir = additionCodePath.substr(0, additionCodePath.find_last_of("."));

	if (_mkdir((survivalCraftCodeDir + "_old").c_str()) != -1)
		devideILCode(sourcePath.c_str(), (survivalCraftCodeDir + "_old").c_str());

	system(((string)"xcopy " + survivalCraftCodeDir + "_old " + survivalCraftCodeDir + "/y /s /i").c_str());

	_mkdir(additionCodeDir.c_str());
	devideILCode(additionCodePath.c_str(), additionCodeDir.c_str());

	ILProgram survivalCraftProgram = ILProgram(survivalCraftCodeDir.c_str());
	ILProgram additionProgram = ILProgram(additionCodeDir.c_str());

	//替换类
	short totalClassCount = (short)survivalCraftProgram.getClassList().size();

	for (auto additionClass : additionProgram.getClassList())
	{
		short survivalCraftClassID = survivalCraftProgram.getClassID(additionClass);

		if (survivalCraftClassID != -1)
		{
			//替换类
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
			//写入新类
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
	
	//添加引用
	vector<string> assemblys;
	string additionHead;

	for (auto additionAssemblyExtern : additionProgram.getAssemblyExternList())
	{
		//没有的话加入
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
				
				//没有存在于附加的列表中的话跳过
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