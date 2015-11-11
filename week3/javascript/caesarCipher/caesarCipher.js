function caesarCipher (message) {
  var arr_message = message.split("");

  var code_array = arr_message.map(function (char) {
    if (char >= "A" && char <= "Z" || char >= "a" && char <= "z") {
      return String.fromCharCode(char.charCodeAt(0)-3);
    } else {
      return char
    }
  })
  console.log(code_array)
  return code_array.join("");
}

var encrypted = caesarCipher("brutus");
encrypted = caesarCipher("Et tu, brute?");

console.log(encrypted);