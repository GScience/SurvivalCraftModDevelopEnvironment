
#include "ILProgram.h"
#include <fstream>
#include <sstream>

using namespace std;

ILProgram::ILProgram(const char* filePath)
{
	ifstream classListFile;
	classListFile.open((string)filePath + "\\[ClassList].cl");

	while (!classListFile.eof())
	{
		short classID;
		string className;

		classListFile >> classID;
		classListFile >> className;

		classMap[className] = classID;
		classList.push_back(className);
	}

	classListFile.close();

	ifstream headFile;
	headFile.open((string)filePath + "\\[Head].il");

	while (!headFile.eof())
	{
		char tmpBuffer[2048];
		headFile.getline(tmpBuffer, 2048, '\n');
		stringstream line = stringstream(tmpBuffer);

		string operatorCode;
		line >> operatorCode;
		if (operatorCode == ".assembly")
		{
			line >> operatorCode;
			if (operatorCode == "extern")
			{
				line >> operatorCode;
				assemblyExtern.push_back(operatorCode);
			}
		}
	}

	headFile.close();
}