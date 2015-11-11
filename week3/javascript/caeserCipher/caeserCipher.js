function caeserCipher (message, shiftNumber) {
  var arr_message = message.split("");

  if (shiftNumber === undefined) { 
    shiftNumber = -3; 
  }

  var code_array = arr_message.map(function (char) {
    var charCode = String.fromCharCode(char.charCodeAt(0) + shiftNumber);
    if (char >= "A" && char <= "Z") {
      return testUpperCase(charCode);
    } else if (char >= "a" && char <= "z") {
      return testLowerCase(charCode);
    } else {
      return char;
    }
    return code_array
  })

  return code_array.join("");
}

function testUpperCase (char) {
  if (char < "A") {
    return String.fromCharCode(char.charCodeAt(0) + 26);
  } else if (char > "Z") {
    return String.fromCharCode(char.charCodeAt(0) - 26);
  } else {
    return char;
  }
}

function testLowerCase (char) {
  if (char < "a") {
    return String.fromCharCode(char.charCodeAt(0) + 26);
  } else if (char > "z") {
    return String.fromCharCode(char.charCodeAt(0) - 26);
  } else {
    return char;
  }
}

var encrypted = caeserCipher("Et tu, brute?", 6)

console.log(encrypted);