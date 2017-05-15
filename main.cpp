#include <iostream>
#include <string>
#include "libspurdoxx/libspurdoxx.hpp"

int main(int argc, char **argv)
{
	for (std::string line; std::getline(std::cin, line);)
	{
		std::cout << to_spurdo(line) << std::endl;
	}
	return 0;
}
