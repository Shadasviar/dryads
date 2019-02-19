#include <iostream>
#include <cstdlib>
#include <string>

using namespace std;

auto ok = [](int x) {return x == 0 ? true : false;};

void runtest(string msg, string cmd) {
    cout << msg << " ... ";
    int ret = system(string(cmd + " 2>/dev/null 1>/dev/null").c_str());
    cout << (ok(ret) ? "OK\n" : "FAILED\n");
}

int main() {
    runtest("SSH available", "ssh -V");
    runtest("Get kernel info", "uname -a");
    runtest("GCC available", "gcc -v");
    runtest("G++ available", "g++ -v");
    runtest("Get user name", "whoami");
    runtest("Network is available", "ping 127.0.0.1 -c 3");
    runtest("Make is available", "make -v");
    runtest("PS check", "ps");
    runtest("Vim available", "vim --version");
    return 0;
}
