
#include <iostream>
#include <vector>

using namespace std;

bool isAlarmOn(int t, int N, int M, int L, const vector<int>& H, const vector<int>& A) {
    int totalSpeed = 0;
    for (int i = 0; i < N; ++i) {
        int currentSpeed = H[i] + A[i] * t;
        if (currentSpeed >= L) {
            totalSpeed += currentSpeed;
        }
    }
    return totalSpeed >= M;
}

int buzzTime(int N, int M, int L, const vector<int>& H, const vector<int>& A) {
    int low = 0, high = 1e9;
    while (low <= high) {
        int mid = low + (high - low) / 2;
        if (isAlarmOn(mid, N, M, L, H, A)) {
            high = mid - 1;
        } else {
            low = mid + 1;
        }
    }
    return low;
}

int main() {
    int N = 3, M = 100, L = 50;
    vector<int> H = {20, 30, 40};
    vector<int> A = {5, 10, 15};

    cout << buzzTime(N, M, L, H, A) << endl;
    return 0;
}
