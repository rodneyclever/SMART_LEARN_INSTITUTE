// assets/js/particles-config.js

particlesJS("particles-js", {
  "particles": {
    "number": {
      "value": 80,
      "density": {
        "enable": true,
        "value_area": 800
      }
    },
    "color": {
      "value": ["#60a5fa", "#93c5fd", "#dbeafe"]
    },
    "shape": {
      "type": "circle",
      "stroke": {
        "width": 0,
        "color": "#000000"
      }
    },
    "opacity": {
      "value": 0.6,
      "random": true,
      "anim": {
        "enable": true,
        "speed": 0.5,
        "opacity_min": 0.3,
        "sync": false
      }
    },
    "size": {
      "value": 3.5,
      "random": true,
      "anim": {
        "enable": true,
        "speed": 2,
        "size_min": 0.5,
        "sync": false
      }
    },
    "line_linked": {
      "enable": true,
      "distance": 150,
      "color": "#60a5fa",
      "opacity": 0.25,
      "width": 1
    },
    "move": {
      "enable": true,
      "speed": 2,
      "direction": "none",
      "random": false,
      "straight": false,
      "out_mode": "out",
      "bounce": false,
      "attract": {
        "enable": false,
        "rotateX": 600,
        "rotateY": 1200
      }
    }
  },
  "interactivity": {
    "detect_on": "canvas",
    "events": {
      "onhover": {
        "enable": true,
        "mode": "grab"
      },
      "onclick": {
        "enable": true,
        "mode": "push"
      },
      "resize": true
    },
    "modes": {
      "grab": {
        "distance": 200,
        "line_linked": {
          "opacity": 0.5
        }
      },
      "push": {
        "particles_nb": 4
      }
    }
  },
  "retina_detect": true
});