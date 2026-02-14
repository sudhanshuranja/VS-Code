#include <iostream>
using namespace std;

void mergeArrays(int arr1[], int n1, int arr2[], int n2, int result[]) {
    for (int i = 0; i < n1; i++) result[i] = arr1[i];
    for (int i = 0; i < n2; i++) result[n1 + i] = arr2[i];
}

int main() {
    int arr1[] = {1, 3, 5, 7};
    int arr2[] = {2, 4, 6, 8};
    int n1 = sizeof(arr1) / sizeof(arr1[0]);
    int n2 = sizeof(arr2) / sizeof(arr2[0]);
    int result[n1 + n2];

    mergeArrays(arr1, n1, arr2, n2, result);

    cout << "Merged array: ";
    for (int i = 0; i < n1 + n2; i++) cout << result[i] << " ";
    cout << endl;

    return 0;
}
