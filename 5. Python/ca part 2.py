# Simple Quiz Program

# Questions and answers
questions = [
    {"question": "What is the capital of France?", "answer": "Paris"},
    {"question": "What is 5 + 3?", "answer": "8"},
    {"question": "What color is the sky on a clear day?", "answer": "Blue"}
]

# Initialize scoreParis
score = 0

# Ask each question
for q in questions:
    print(q["question"])
    user_answer = input("Your answer: ").strip()
    if user_answer.lower() == q["answer"].lower():
        print("Correct!")
        score += 1
    else:
        print(f"Wrong! The correct answer is {q['answer']}.")

# Display the result
print(f"\nYou got {score} out of {len(questions)} questions correct!")

set_score = set(1, 2, 3, 4, 5)  
set_score = set (5,6,7,8,1,2) 

print(set_score)
# unique items in the set_score

print("Unique items in the set_score:", set_score)
# set_score = set (5,6,7,8,1,2)

