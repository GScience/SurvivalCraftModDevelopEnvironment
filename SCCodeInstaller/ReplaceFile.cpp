
#define _CRT_SECURE_NO_WARNINGS
#include <fstream>
#include <sstream>

using namespace std;

void saveFile(const char* file, string data);

bool replaceFile(const char* from, const char* to)
{
	ifstream fromFile;
	fromFile.open(from);

	string fileData;

	while (!fromFile.eof())
	{
		char tmpBuffer[2048]{ 0 };
		fromFile.getline(tmpBuffer, 2048, '\n');
		fileData += tmpBuffer;
		fileData += "\n";
	}
	saveFile(to, fileData);

	return true;
}