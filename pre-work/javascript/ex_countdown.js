function countdown (number) {
    while (number >= 0) {
        console.log(number);
        number--; // esto es igual que 'number = number -1;''
    }
    console.log("Blast of!");
}

countdown(5);