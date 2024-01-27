#include <fstream>
#include "jpeg_reader.h"

int main()
{
    std::ifstream fin("samples/Cat.jpg");
    jpeg_reader reader;

    reader.read(fin);
    return 0;
}