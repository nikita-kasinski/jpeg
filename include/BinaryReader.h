#pragma once
#include <cstdint>

class BinaryReader
{
public:
    virtual std::uint8_t Get() = 0;
};