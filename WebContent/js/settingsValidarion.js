function checkForm() {
  var pw1 = document.getElementById("pw2.1");
  var pw2 = document.getElementById("pw2.2");
  
  if(pw2.1 != pw2.2) {
    alert("Please make sure both new passwords are the same");
  }
};
