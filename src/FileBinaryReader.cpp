#include <fstream>
#include "FileBinaryReader.h"

FileBinaryReader::FileBinaryReader(const std::string& FileName):
    FileStream(std::ifstream(FileName, std::ios::binary | std::ios::in))
{
}

bool FileBinaryReader::Get(uint8_t& OutX)
{
    if (!FileStream.eof())
    {
        OutX = FileStream.get();
        return true;
    }
    return false;
}