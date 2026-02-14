#include <iostream>
using namespace std;

void generateTables(int start, int end) {
    for (int i = start; i <= end; i++) {
        cout << "Table of " << i << ":\n";
        for (int j = 1; j <= 10; j++) {
            cout << i << " x " << j << " = " << i * j << endl;
        }
        cout << endl;
    }
}

int main() {
    int start, end;
    cout << "Enter the start and end range: ";
    cin >> start >> end;

    generateTables(start, end);

    return 0;
}
