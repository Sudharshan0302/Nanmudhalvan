function greetCustomer(customerName = "Customer") {
    console.log("Hello" + customerName);
}

greetCustomer();
greetCustomer("Tom 1");
greetCustomer("Tom 2");
greetCustomer("Tom 3");
greetCustomer("Tom 4");

function checkForValidAge(age) {
    return age > 18 ? true : false;
}

var person1 = checkForValidAge(14);
console.log(person1);
var person2 = checkForValidAge(21);
console.log(person2);

var test = function(marks) {
    return marks % 2 === 0 ? "Passes" : "failed";
};

console.log(test(101));


function printFullName(fname,lname) {
    console.log(fname +" " + lname);
}

printFullName("Atchaya", "Sathish");

const FullName = (fname , lname) => {
    console.log(fname + " " + lname);
}

FullName("Revathi", "somu");