function caeserCipher (message, shiftNumber) {
  var arr_message = message.split("");

  var code_array = arr_message.map(function (char) {
    if (char >= "A" && char <= "Z" || char >= "a" && char <= "z") {
      return String.fromCharCode(char.charCodeAt(0) - shiftNumber);
    } else {
      return char
    }
  })

  return code_array.join("");
}

var encrypted = caeserCipher("brutus");
encrypted = caeserCipher("Et tu, brute?");
encrypted = caeserCipher("Et tu, brute?", -4);

console.log(encrypted);