function appendNumber(number) {
    document.getElementById("result").value += number;
}

function appendOperator(operator) {
    document.getElementById("result").value += operator;
}

function clearDisplay() {
    document.getElementById("result").value = "";
}

function deleteLast() {
    let currentValue = document.getElementById("result").value;
    document.getElementById("result").value = currentValue.slice(0, -1);
}

function calculateResult() {
    try {
        let currentValue = document.getElementById("result").value;
        let result = eval(currentValue);
        document.getElementById("result").value = result;
    } catch (error) {
        document.getElementById("result").value = "Error";
    }
}
