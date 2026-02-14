#include <iostream>

int main() 
{
    int n = 5;
    int arr[6] = {33, 55, 77, 88, 22}; // Array size increased to 6 to accommodate new element

    std::cout << "Size of array: " << n << std::endl;

    // Print the original array
    std::cout << "Original array:" << std::endl;

    for (int i = 0; i < n; ++i)
    {
        std::cout << arr[i] << std::endl;
    }

    int x = 99;
    int pos = 3;

    // Shift elements to the right to make space for the new element
    for (int i = n; i >= pos; --i) 
    {
        arr[i] = arr[i - 1];
    }
    arr[pos - 1] = x;

    // Increase size of 'n' to reflect the new element
    ++n;

    // Print the array after insertion
    std::cout << "Array after insertion:" << std::endl;
    for (int i = 0; i < n; ++i) {
        std::cout << arr[i] << std::endl;
    }

    return 0;
}