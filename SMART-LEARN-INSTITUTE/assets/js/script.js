// Typing Animation
const texts = [
  "Empowering Students to Learn Better",
  "Interactive Courses & Live Classes",
  "Learn from Industry Experts",
  "Track Your Progress & Earn Certificates",
  "Your Future Starts Here"
];

let index = 0;
let charIndex = 0;
let currentText = "";
let isDeleting = false;

function typeEffect() {
  const typingElement = document.getElementById("typing");

  if (!isDeleting) {
    currentText = texts[index].substring(0, charIndex + 1);
    typingElement.textContent = currentText;
    charIndex++;

    if (charIndex === texts[index].length) {
      isDeleting = true;
      setTimeout(typeEffect, 2000); // Pause at end
      return;
    }
  } else {
    currentText = texts[index].substring(0, charIndex - 1);
    typingElement.textContent = currentText;
    charIndex--;

    if (charIndex === 0) {
      isDeleting = false;
      index = (index + 1) % texts.length;
    }
  }
  setTimeout(typeEffect, isDeleting ? 50 : 70);
}

// Start typing
window.onload = () => {
  typeEffect();
};

function enter(){   
    window.location.href = "index.html";
}


    
     function showSignupModal() {
      document.getElementById('signupModal').style.display = 'flex';
    }

    function hideSignupModal() {
      document.getElementById('signupModal').style.display = 'none';
    }



    
