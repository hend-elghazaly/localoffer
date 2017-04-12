/* created by Awais Mizra Published Aug 23, 2016 https://www.youtube.com/watch?v=jvk1pFNqXaw */


function Quiz (questions) {
  this.score = 0;
  this.questions = questions;
  this.questionIndex = 0;

}

//to get the index of the current question

Quiz.prototype.getQuestionIndex = function(){
  return this.questions[this.questionIndex];
}

//to know if the quiz ended or not
Quiz.prototype.isEnded = function(){
  return this.question.length === this.questionIndex;
}

//checking if the answer is correct or not
Quiz.prototype.guess = function(answer){
  this.questionIndex++;

  if (this.getQuestionIndex().correctAnswer(answer)) {
    this.score++;

  }
;
