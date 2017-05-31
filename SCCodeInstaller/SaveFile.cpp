
#define _CRT_SECURE_NO_WARNINGS
#include <fstream>
#include <sstream>

using namespace std;

void saveFile(const char* file, string data)
{
	ofstream ilClassFile(file, ofstream::out);
	ilClassFile << data;
	ilClassFile.close();
}