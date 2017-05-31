
#define _CRT_SECURE_NO_WARNINGS
#include <fstream>
#include <sstream>

using namespace std;

void saveFile(const char* file, string classILCode);

bool combineILCode(const char* ilClassPath, const char* ilFile)
{
	ifstream classListFile;
	classListFile.open((string)ilClassPath + "\\[ClassList].cl");

	string fullILCode;

	ifstream headILFile;
	headILFile.open((string)ilClassPath + "\\[Head].il");

	while (!headILFile.eof())
	{
		char tmpBuffer[2048]{ 0 };
		headILFile.getline(tmpBuffer, 2048, '\n');
		fullILCode += tmpBuffer;
		fullILCode += "\n";
	}

	while (!classListFile.eof())
	{
		//获取类名和ID
		string classID;
		string className;
		classListFile >> classID;
		classListFile >> className;

		ifstream classILFile;
		classILFile.open((string)ilClassPath + "\\[Class]" + classID + ".il");

		while (!classILFile.eof())
		{
			char tmpBuffer[2048]{ 0 };
			classILFile.getline(tmpBuffer, 2048, '\n');
			fullILCode += tmpBuffer;
			fullILCode += "\n";
		}
	}
	saveFile(ilFile, fullILCode);

	return true;
}