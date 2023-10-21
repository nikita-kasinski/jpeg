#pragma once
#include <cstdint>

class BinaryReader
{
public:
    virtual bool Get(uint8_t& OutX) = 0;
};