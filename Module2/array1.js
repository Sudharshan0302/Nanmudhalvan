const movies = new Array("Audi", "Honda", "Kia");
const age = new Array(12, 22, 43);
const mixeditems = new Array(movies, age, ["Ram", 22, ["1", "2"]]);

console.log(mixedItems);

// sorting and concerntrating Arrays

const fruits = ["Orange", "Apple", "Mango", "banana"];
console,log(fruits);
fruits.sort();
fruits.reverse();
console.log(fruits);

const axis = [22.2, 12.9, 1, 4, 100.45];
axis.sort(function (a, b) {
    console.log(a, b, a- b);
    return a - b;
});
console.log(axis);

const num1 = [1,2,3];
const num2 = [4,5,6];
console.log(num1.concat(num2));

// split and slice an array

const number = [1,2,3,4,5];

// number.splice(3,2,6,7,8);
numbers.splice(1,1);
console,log(number);