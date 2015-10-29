var country;
var objString;
var objArray;

country = {
    name: "Uruguay",
    continent: "South America",
    capital: "Montevideo"
};

function objectToArray(obj) {
    objArray = [];
    for (key in obj) {
        objArray.push(obj[key]);
    }
    return objArray;
}

console.log(objectToArray(country));