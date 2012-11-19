$("#donatechallenge1").click(function() {
  var challengevalue = $("#challenge1").width();
  if(challengevalue < 500){
  $("#challenge1").width('+=20');}
});