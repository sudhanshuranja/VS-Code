/**
 * JavaScript Comprehensive Example
 * This example demonstrates various fundamental concepts of JavaScript.
 */

// 1. Variables and Data Types
let name = "Alice"; // String
const age = 30; // Number (constant)
let isStudent = true; // Boolean
let hobbies = ["reading", "gaming", "cooking"]; // Array
let address = { street: "123 Main St", city: "Wonderland" }; // Object
let undefinedVariable; // Undefined
let nullVariable = null; // Null

// 2. Functions
// Function declaration
function greet(userName) {
    console.log(`Hello, ${userName}!`);
    document.getElementById('greeting').innerText = `Hello, ${userName}!`;
}

// Function expression
const sayGoodbye = function (userName) {
    console.log(`Goodbye, ${userName}!`);
};

// Arrow function
const add = (a, b) => a + b;

// 3. Conditional Statements
function checkEligibility(age) {
    if (age >= 18) {
        console.log("You are eligible to vote.");
    } else {
        console.log("You are not eligible to vote.");
    }
}

// 4. Loops
// For loop
for (let i = 0; i < hobbies.length; i++) {
    console.log(`Hobby ${i + 1}: ${hobbies[i]}`);
}

// While loop
let counter = 0;
while (counter < 5) {
    console.log(`Counter: ${counter}`);
    counter++;
}

// Do-while loop
let num = 0;
do {
    console.log(`Number: ${num}`);
    num++;
} while (num < 3);

// 5. Arrays and Methods
hobbies.push("painting"); // Add an element
console.log(hobbies); // Display array
hobbies.pop(); // Remove the last element
console.log(hobbies);

// 6. Objects and Methods
address.getFullAddress = function () {
    return `${this.street}, ${this.city}`;
};
console.log(address.getFullAddress());

// 7. Event Handling
document.getElementById("myButton").addEventListener("click", () => {
    alert("Button clicked!");
});

// 8. Error Handling
try {
    let result = 10 / 0;
    console.log(result);
} catch (error) {
    console.log("An error occurred: " + error.message);
} finally {
    console.log("This runs regardless of the outcome.");
}

// 9. Promises and Asynchronous Programming
function simulateAsyncOperation() {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("Operation successful!");
        }, 2000);
    });
}

simulateAsyncOperation().then((message) => {
    console.log(message);
}).catch((error) => {
    console.log("An error occurred: " + error.message);
});

// 10. Classes
class Person {
    constructor(name, age) {
        this.name = name;
        this.age = age;
    }

    introduce() {
        console.log(`Hi, I'm ${this.name} and I'm ${this.age} years old.`);
    }
}

const alice = new Person("Alice", 30);
alice.introduce();

// 11. Modules (example for Node.js or ES6 environments)
// file1.js
// export const greeting = "Hello, world!";
// export function greetUser(userName) {
//     return `Hello, ${userName}`;
// }

// file2.js
// import { greeting, greetUser } from './file1.js';
// console.log(greeting);
// console.log(greetUser("Alice"));

/**
 * This example code demonstrates key JavaScript concepts and best practices.
 * Concepts covered include:
 * - Variables and data types
 * - Functions (declarations, expressions, and arrow functions)
 * - Conditional statements
 * - Loops
 * - Arrays and their methods
 * - Objects and their methods
 * - Event handling
 * - Error handling
 * - Promises and asynchronous programming
 * - Classes
 * - Modules (for environments that support ES6 modules)
 */
