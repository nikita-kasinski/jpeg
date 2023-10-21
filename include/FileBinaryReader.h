#pragma once
#include <string>
#include <fstream>
#include "BinaryReader.h"

class FileBinaryReader: public BinaryReader
{
public:
    FileBinaryReader(const std::string& FileName);
    virtual bool Get(uint8_t& OutX) override;
private:
    std::ifstream FileStream;
};