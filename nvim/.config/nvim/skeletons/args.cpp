#include <iostream>

int main(int argc, char *argv[]) {
	// argc = argument count
	// argv = argument vector

	if (argc < 2) {
		std::cerr << "Usage: " << argv[0] << " <args...>\n";
		return 1;
	}

	for (int i = 1; i < argc; ++i) {
		std::cout << "arg[" << i << "] = " << argv[i] << '\n';
	}

	return 0;
}
