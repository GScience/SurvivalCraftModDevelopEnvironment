#pragma once

#define _CRT_SECURE_NO_WARNINGS
#include <unordered_map>
#include <vector>
#include <string>

class ILProgram
{
	std::unordered_map<std::string, short> classMap;
	std::vector<std::string> classList;
	std::vector<std::string> assemblyExtern;
public:
	ILProgram(const char* filePath);

	short getClassID(std::string className)
	{
		if (classMap.find(className) != classMap.end())
			return classMap[className];

		return -1;
	}

	const std::vector<std::string>& getAssemblyExternList()
	{
		return assemblyExtern;
	}

	const std::vector<std::string>& getClassList()
	{
		return classList;
	}
};