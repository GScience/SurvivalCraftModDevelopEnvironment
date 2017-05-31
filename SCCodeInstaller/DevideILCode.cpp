
#define _CRT_SECURE_NO_WARNINGS
#include <fstream>
#include <sstream>

using namespace std;

void saveFile(const char* file, string classILCode);

bool devideILCode(const char* file, const char* ilClassPath)
{
	ifstream ilFile;
	ilFile.open(file);
	
	string headILCode;
	string classList;

	int classID = 0;

	bool hasReadToContent = false;

	while (!ilFile.eof())
	{
		char tmpBuffer[2048]{ 0 };
		ilFile.getline(tmpBuffer, 2048, '\n');

		if (tmpBuffer[0] == 0)
			continue;

		stringstream line = stringstream(tmpBuffer);
		string ilOperator;
		line >> ilOperator;

		if (ilOperator == "//")
			hasReadToContent = true;

		if (!hasReadToContent)
			continue;

		if (ilOperator == ".class")
		{
			string classILCode = tmpBuffer;
			string className;
			string classIDString;

			//获取class ID
			char s[12];
			_itoa(classID, s, 10);
			classIDString = s;

			while (!(tmpBuffer[0] == '}'))
			{
				ilFile.getline(tmpBuffer, 2048, '\n');
				classILCode += "\n";
				classILCode += tmpBuffer;
			}
			stringstream line = stringstream(tmpBuffer);

			//获取类名
			while (!line.eof())
				line >> className;

			classList += "\n";
			classList += classIDString + " " + className;

			saveFile(((string)ilClassPath + "\\[Class]" + classIDString + ".il").c_str(), classILCode);
			classID++;
		}
		else
		{
			headILCode += "\n";
			headILCode += tmpBuffer;
		}
	}
	saveFile(((string)ilClassPath + "\\[Head].il").c_str(), headILCode);
	saveFile(((string)ilClassPath + "\\[ClassList].cl").c_str(), classList);

	return true;
}