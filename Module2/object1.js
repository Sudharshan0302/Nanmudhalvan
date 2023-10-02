function Person(firstName, lName, age, contactNumber) {
    this.firstName = firstNamel
    this.lName = lName;
    this.age = age;
    this.contactNumber = contactNumber;

}

const p1 = Person("Atchaya", "Sathish",24, 7364872648);
console.log(p1.age)







const student = {
    name: "Atchaya",
    perentage: "78%",
    greet:function () {
        return this.name + ", Hello world";
    },
};
console.log(student.greet());

