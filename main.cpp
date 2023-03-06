#include <fstream>
#include <iostream>
#include <string>

using namespace std;

void loadPascalScript(string fileName) {
    ifstream file(fileName);
    if (file.is_open()) {
        string line;
        while (getline(file, line)) {
            cout << line << endl; // здесь можно работать с содержимым файла
        }
        file.close();
    }
}

int main() {
    string fileName = "script.pas";
    loadPascalScript(fileName);
    return 0;
}
