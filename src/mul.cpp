// mul.cpp
#include <iostream>
int main(int argc, char *argv[])
{
    if (argc < 3)
    {
        std::cout << "Usage: " << argv[0] << " <num1> <num2>" << std::endl;
        return 1;
    }
    else
    {
        int num1 = atoi(argv[1]);
        int num2 = atoi(argv[2]);
        std::cout << num1 << " * " << num2 << " = " << num1 * num2
                  << std::endl;
    }
    return 0;
}