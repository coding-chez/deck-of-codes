function validateForm() {
  var firstName = document.getElementById("firstName").value;
  var lastName = document.getElementById("lastName").value;
  var birthday = document.getElementById("birthday").value;
  var gender = document.getElementById("gender").value;
  var email = document.getElementById("email").value;
  var password = document.getElementById("password").value;
  var confirmPassword = document.getElementById("confirmPassword").value;
  var passwordError = document.getElementById("passwordError");

  // Check if input values are not empty
  if (firstName === "" || lastName === "" || birthday === "" || gender === "" || email === "" || password === "" || confirmPassword === "") {
    alert("Please fill in all fields.");
    return false;
  }

  // Check if Password and Confirm Password are of the same value
  if (confirmPassword !== password) {
    passwordError.textContent = "Passwords do not match.";
    return false;
  } else {
    passwordError.textContent = "";
  }

  // Check if the format of the Email address is correct
  var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  if (!email.match(emailRegex)) {
    alert("Invalid email address.");
    return false;
  }

  return true;
}

// function validateForm() {
//   var firstName = document.getElementById("firstName").value;
//   var lastName = document.getElementById("lastName").value;
//   var birthday = document.getElementById("birthday").value;
//   var gender = document.getElementById("gender").value;
//   var email = document.getElementById("email").value;
//   var password = document.getElementById("password").value;
//   var confirmPassword = document.getElementById("confirmPassword").value;

//   // Check if input values are not empty
//   if (firstName === "" || lastName === "" || birthday === "" || gender === "" || email === "" || password === "" || confirmPassword === "") {
//     alert("Fill out this field.");
//     return false;
//   }

//   // Check if Password and Confirm Password are of the same value
//   if (password !== confirmPassword) {
//     alert("Passwords do not match.");
//     return false;
//   }
// }