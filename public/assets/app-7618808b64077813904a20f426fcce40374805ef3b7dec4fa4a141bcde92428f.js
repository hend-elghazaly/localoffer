/* created by Awais Mizra Published Aug 23, 2016 https://www.youtube.com/watch?v=jvk1pFNqXaw */

//to populate the questions

function populate() {
  if(quiz.isEnded()) {
    showScores();
  }
  else {
    //show question
    var element = document.getElementById("question");
    element.innerHTML = quiz.getQuestionIndex().text;

    //show answer options/choices
    var choices = quiz.getQuestionIndex().choices;
    for(var i=0; i<choices.length;i++){
      var element = document.getElementById("choice"+i);
      element.innerHTML = choices[i];
      //to detect if the user clicked on the right answer\
      guess("btn" + i, choices[i]);

    }
    showProgress();
  }
};

function guess(id, guess){
  var button = document.getElementById(id);
  button.onclick = function() {
    quiz.guess(guess);
    populate();
  }

};

function showProgress(){
  var currentQuestionNumber = quiz.questionIndex + 1;
  var element = document.getElementById("progress");
  element.innerHTML = "Question " + currentQuestionNumber + "of" + quiz.questions.length;
}

function showScores(){
  var gameOverHtml = "<h1> Result </h1>"
  gameOverHtml += "<h2 id='score'> Your scores: " + quiz.score + "</h2>";
  var element = document.getElementById("quiz");
  element.innerHTML = gameOverHtml;

};


//question, options, correct answer
var questions = [
  new Question("What is a Local Offer?", ["Discount", "Guide to services", "Contract", "Legal thing I have nothing to do with"],"Guide to services"),
  new Question("__________ produces the Local Offer.", ["Local Authority", "Schools", "Hospitals", "Clubs"],"Local Authority"),
  new Question("EHCP stands for_______", ["Epilepsy Health Centre Place", "Education Home Care People", "Education Health Care Plan", "Eat Hear Care Pray"],"Education Health Care Plan"),
  new Question("If I want to work I should______", ["Discount", "Guide to services", "Contract", "Legal thing I have nothing to do with"],"Guide to services"),
  new Question("What is a Local Offer?", ["Discount", "Guide to services", "Contract", "Legal thing I have nothing to do with"],"Guide to services")

];

//object for this controller
var quiz = new Quiz(questions);

//calling the function to populate questions
populate();
