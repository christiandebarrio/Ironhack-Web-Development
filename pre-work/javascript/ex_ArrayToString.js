var names;
names = [ "Canada", "Mexico", "Turkey", "Japan", "Spain", "France"];

// console.log(names.length);

function prepare (a) {
    var namestring = "";
    var index;
    for (index = 0; index < a.length; index++) {
        if ((a.length - index) === 1) {
            namestring += " and " + a[index] + ".";
        } else if ((a.length - index) === 2) {
            namestring += a[index];
        } else {
            namestring += a[index] +", ";
        }
    }
    return namestring;
}

console.log(prepare(names));