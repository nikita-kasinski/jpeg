#include "jpeg_reader.h"
#include <cstdint>
#include <iomanip>
#include <iostream>

jpeg_reader::jpeg_reader()
{

}

bool jpeg_reader::read(std::istream& input)
{
    uint8_t x;
    while(input >> x) 
    {
        std::cout << std::hex << std::setw(2) << std::right << std::setfill('0')<< (int)x << ' ';
    }
    std::cout << std::endl;
    return true;
}