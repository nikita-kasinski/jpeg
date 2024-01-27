#pragma once
#include <istream>

class jpeg_reader
{
public:
    jpeg_reader();
    bool read(std::istream& input);
};