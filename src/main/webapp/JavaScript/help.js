

const chatBot = document.querySelector('.inner-element.bot');

// Function to reposition the chatbotbutton
function repositionchatBot() {
const windowHeight = window.innerHeight;
const buttonHeight = chatBot.clientHeight;

// Calculate the top position to center the button
const position = (windowHeight - buttonHeight) / 2;


chatBot.style.top = position + 'px';
}


window.addEventListener('resize', repositionchatBot);

//fun call
repositionchatBot();

