let start = document.querySelector("#start");
let guide = document.querySelector("#guide");
let exit = document.querySelector("#exit");
let continueBtn = document.querySelector("#continue");
let marksHtml = document.querySelector("#count");
let quiz = document.querySelector("#quiz");
let time = document.querySelector("#time");
let timerHTm = document.querySelector("#time");

let questionNo = document.querySelector("#questionNo");
let questionText = document.querySelector("#questionText");

let option1 = document.querySelector("#option1");
let option2 = document.querySelector("#option2");
let option3 = document.querySelector("#option3");
let option4 = document.querySelector("#option4");

let total_correct = document.querySelector("#total_correct");
let next_question = document.querySelector("#next_question");

let result = document.querySelector("#result");
let points = document.querySelector("#points");
let quit = document.querySelector("#quit");
let startAgain = document.querySelector("#startAgain");

let choice_que = document.querySelectorAll(".choice_que");

let correct = 0;

let UserAns = undefined;

start.addEventListener("click", () => {
  start.style.display = "none";
  guide.style.display = "block";
});

exit.addEventListener("click", () => {
  start.style.display = "block";
  guide.style.display = "none";
});
let timer = 20;

let countDown = () => {
  if (timer == 00) {
    nextQue();
  } else {
    timer--;
    time.innerText = timer;
  }
};

var counter = 0;

function check() {
  $.ajax({
    type: "post",
    url: "/quiz/php/check.php",
    data: { check: true },
  });
  nextQue();
  // make optSel() null
  optSel = null;
  quiz.style.display = "block";
  result.style.display = "none";
  document.querySelector("#timer").style.display = "none";
  document.querySelector("#right").style.display = "block";
}

continueBtn.addEventListener("click", () => {
  $.ajax({
    type: "post",
    url: "/quiz/php/check.php",
    data: { check: false },
  });
  $.ajax({
    type: "post",
    url: "/quiz/php/ansNull.php",
  });
  quiz.style.display = "block";
  guide.style.display = "none";
  counter = setInterval(countDown, 1000);
  nextQue();
});

let marks = 0;
let totalQue = 100;
let countQue = 0;
let sub = localStorage.getItem("sub");
function optSel(x) {
  $.ajax({
    type: "post",
    url: "/quiz/php/valAns.php",
    data: { opt: x, que: countQue, sub: sub },
    success: function (data) {
      if (data == 1) {
        ++marks;
      }
    },
  });
  nextQue();
  totalQue = document.getElementById("count").innerHTML;
}
function nextQue() {
  timer = 20;
  if (countQue < totalQue) {
    countQue++;
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function () {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("main").innerHTML = this.responseText;
      }
    };
    let variables = `q=${countQue}&sub=${sub}`;
    xmlhttp.open("GET", "/quiz/php/getques.php?" + variables, true);
    xmlhttp.send();
  } else {
    function ok() {
      quiz.style.display = "none";
      result.style.display = "flex";
      points.innerHTML = `You Got ${marks} out of ${totalQue}`;
      clearInterval(counter);
      countQue = 0;
      let name = "Anonymous";
      if (localStorage.getItem("name")) {
        name = localStorage.getItem("name");
      }
      $.ajax({
        type: "post",
        url: "/quiz/php/setMarks.php",
        data: { name: name, marks: marks, sub: sub },
        success: function (data) {
          console.log(data);
        },
      });
    }
    setTimeout(ok, 650);
  }
}
function startAg() {
  window.location.reload();
}
exit.addEventListener("click", () => {
  guide.style.display = "block";
  result.style.display = "none";
});
