const nameInput = document.querySelector("#name");
const email = document.querySelector("#email");
const message = document.querySelector("#message");
const success = document.querySelector("#success");
const errorNodes = document.querySelectorAll(".error");

function validateForm(){

    clearMessages();
    let errorFlag = false;

    if(nameInput.value.length<1){
        const nameInput = document.querySelector("#name");
        errorNodes[0].innerText = "Name is required";
        nameInput.classList.add("error-border");
        errorFlag = true;
    }

    if(!emailIsVaild(email.value)){
        errorNodes[1].innerText = "Invaild Email Address";
        email.classList.add("error-border");
        errorFlag = true;
    }

    if(message.value.length<1){
        errorNodes[2].innerText = "Please Enter Your Message";
        message.classList.add("error-border");
        errorFlag = true;
    }

    if(!errorFlag){
        success.innerText = "Success!";
    }
}

function clearMessages(){
    for(let i=0; i<errorNodes.length; i++){
        errorNodes[i].innerText="";
    }
    success.innerText = "";
    nameInput.classList.remove("error-border");
    email.classList.remove("error-border");
    message.classList.remove("error-border");
}

function emailIsVaild(email){
    let pattern = /\S+@\S+\.\S+/;
    return pattern.test(email);
}