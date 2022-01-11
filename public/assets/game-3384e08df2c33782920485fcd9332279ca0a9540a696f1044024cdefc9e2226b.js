/* created by Awais Mizra Published Aug 23, 2016 https://www.youtube.com/watch?v=jvk1pFNqXaw */

//to populate the questions

function populate() {
  if(quiz.isEnded()) {
    //showScores();
  }
  else {
    //show question
    var element = document.getElementById("question");
    element.innerHTML = quiz.getQuestionIndex().text;
  }
}

//question, options, correct answer
var questions = [
  new QUESTION("What is a Local Offer?", ["Discount", "Guide to services", "Contract", "Legal thing I have nothing to do with"],"Guide to services"),
  new QUESTION("What is a Local Offer?", ["Discount", "Guide to services", "Contract", "Legal thing I have nothing to do with"],"Guide to services"),
  new QUESTION("What is a Local Offer?", ["Discount", "Guide to services", "Contract", "Legal thing I have nothing to do with"],"Guide to services"),
  new QUESTION("What is a Local Offer?", ["Discount", "Guide to services", "Contract", "Legal thing I have nothing to do with"],"Guide to services"),
  new QUESTION("What is a Local Offer?", ["Discount", "Guide to services", "Contract", "Legal thing I have nothing to do with"],"Guide to services"),

];

//object for this controller
var quiz = new Quiz(questions);

//calling the function to populate questions
populate();
