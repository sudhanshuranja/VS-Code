#include <iostream>
#include <string>

int calculatePrice(const std::string& productCode) {
    int price = 1;
    for (char ch : productCode) {
        price *= (ch - '0');
    }
    return price;
}

int main() {
    std::string productCode = "1234";
    std::cout << calculatePrice(productCode) << std::endl;
    return 0;
}
