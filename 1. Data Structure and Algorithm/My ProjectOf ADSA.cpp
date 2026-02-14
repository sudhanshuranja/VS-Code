#include <iostream>
#include <string>
using namespace std;

struct Task {
    int id;
    string description;
    bool completed;
    Task* next;
};

class ToDoList {
private:
    Task* head;
    int taskCounter;

public:
    ToDoList() {
        head = nullptr;
        taskCounter = 1;
    }

    void addTask(string desc) {
        Task* newTask = new Task{taskCounter++, desc, false, nullptr};
        if (!head) {
            head = newTask;
        } else {
            Task* temp = head;
            while (temp->next)
                temp = temp->next;
            temp->next = newTask;
        }
        cout << "Task added successfully!\n";
    }

    void viewTasks() {
        if (!head) {
            cout << "No tasks available.\n";
            return;
        }
        Task* temp = head;
        cout << "\nTo-Do List:\n";
        cout << "-------------------------------\n";
        while (temp) {
            cout << "ID: " << temp->id << " | ";
            cout << "Task: " << temp->description << " | ";
            cout << "Status: " << (temp->completed ? "Completed" : "Pending") << "\n";
            temp = temp->next;
        }
        cout << "-------------------------------\n";
    }

    void editTask(int id) {
        Task* temp = head;
        while (temp) {
            if (temp->id == id) {
                cout << "Current Description: " << temp->description << "\n";
                cout << "Enter new description: ";
                cin.ignore();
                getline(cin, temp->description);
                cout << "Task updated successfully!\n";
                return;
            }
            temp = temp->next;
        }
        cout << "Task with ID " << id << " not found.\n";
    }

    void deleteTask(int id) {
        if (!head) {
            cout << "List is empty.\n";
            return;
        }
        if (head->id == id) {
            Task* temp = head;
            head = head->next;
            delete temp;
            cout << "Task deleted successfully.\n";
            return;
        }
        Task* prev = head;
        Task* curr = head->next;
        while (curr) {
            if (curr->id == id) {
                prev->next = curr->next;
                delete curr;
                cout << "Task deleted successfully.\n";
                return;
            }
            prev = curr;
            curr = curr->next;
        }
        cout << "Task with ID " << id << " not found.\n";
    }

    void markComplete(int id) {
        Task* temp = head;
        while (temp) {
            if (temp->id == id) {
                temp->completed = true;
                cout << "Task marked as completed!\n";
                return;
            }
            temp = temp->next;
        }
        cout << "Task with ID " << id << " not found.\n";
    }

    ~ToDoList() {
        while (head) {
            Task* temp = head;
            head = head->next;
            delete temp;
        }
    }
};

int main() {
    ToDoList list;
    int choice;
    string desc;
    int id;

    do {
        cout << "\nTO-DO LIST MENU\n";
        cout << "1. Add Task\n";
        cout << "2. View Tasks\n";
        cout << "3. Edit Task\n";
        cout << "4. Delete Task\n";
        cout << "5. Mark Task as Complete\n";
        cout << "0. Exit\n";
        cout << "Enter your choice: ";
        cin >> choice;

        switch (choice) {
            case 1:
                cin.ignore();
                cout << "Enter task description: ";
                getline(cin, desc);
                list.addTask(desc);
                break;
            case 2:
                list.viewTasks();
                break;
            case 3:
                cout << "Enter Task ID to edit: ";
                cin >> id;
                list.editTask(id);
                break;
            case 4:
                cout << "Enter Task ID to delete: ";
                cin >> id;
                list.deleteTask(id);
                break;
            case 5:
                cout << "Enter Task ID to mark as complete: ";
                cin >> id;
                list.markComplete(id);
                break;
            case 0:
                cout << "Exiting...\n";
                break;
            default:
                cout << "Invalid choice! Try again.\n";
        }

    } while (choice != 0);

    return 0;
}
