/* created by Awais Mizra Published Aug 23, 2016 https://www.youtube.com/watch?v=jvk1pFNqXaw */

function Question(text, choices, answer) {
  this.text=text;
  this.choices=choices;
  this.answer=answer;
}

//to check if the answer is correct
Question.prototype.correctAnswer = function(choice){
  return choice === this.answer;
}
