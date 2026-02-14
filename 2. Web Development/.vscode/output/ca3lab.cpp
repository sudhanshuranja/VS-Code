#include <iostream>
using namespace std;

class CircularQueue {
private:
    int *queue;
    int front, rear, size;

public:
    // Constructor to initialize the queue
    CircularQueue(int size) {
        this->size = size;
        queue = new int[size];
        front = -1;
        rear = -1;
    }

    // Enqueue operation
    void enqueue(int value) {
        if ((rear + 1) % size == front) {
            cout << "Queue is Full!" << endl;
            return;
        }
        if (front == -1) { // If queue is empty
            front = 0;
        }
        rear = (rear + 1) % size; // Circular increment
        queue[rear] = value;
        cout << "Enqueued: " << value << endl;
    }

    // Dequeue operation
    void dequeue() {
        if (front == -1) {
            cout << "Queue is Empty!" << endl;
            return;
        }
        int value = queue[front];
        if (front == rear) { // If queue becomes empty
            front = -1;
            rear = -1;
        } else {
            front = (front + 1) % size; // Circular increment
        }
        cout << "Dequeued: " << value << endl;
    }

    // Display the queue
    void display() {
        if (front == -1) {
            cout << "Queue is Empty!" << endl;
            return;
        }
        cout << "Queue Elements: ";
        int i = front;
        while (true) {
            cout << queue[i] << " ";
            if (i == rear) {
                break;
            }
            i = (i + 1) % size; // Circular increment
        }
        cout << endl;
    }

    // Destructor to free allocated memory
    ~CircularQueue() {
        delete[] queue;
    }
};

// Driver code
int main() {
    int size;
    cout << "Enter the size of the Circular Queue: ";
    cin >> size;

    CircularQueue cq(size);

    while (true) {
        cout << "\n1. Enqueue\n2. Dequeue\n3. Display\n4. Exit\n";
        cout << "Enter your choice: ";
        int choice;
        cin >> choice;

        switch (choice) {
        case 1: {
            cout << "Enter value to enqueue: ";
            int value;
            cin >> value;
            cq.enqueue(value);
            break;
        }
        case 2:
            cq.dequeue();
            break;
        case 3:
            cq.display();
            break;
        case 4:
            cout << "Exiting..." << endl;
            return 0;
        default:
            cout << "Invalid choice! Try again." << endl;
        }
    }
}
