<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>فيلم النجاح | Success Story</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fontsource/cairo@4.5.0/index.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<style>
* { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Cairo', sans-serif; }
body {
  background: #000;
  color: #fff;
  min-height: 100vh;
  overflow: hidden;
}

.cinema {
  width: 100vw;
  height: 100vh;
  position: relative;
  overflow: hidden;
}

/* Sky */
.sky {
  position: absolute;
  top: 0; left: 0;
  width: 100%; height: 100%;
  transition: background 2s ease;
  background: linear-gradient(180deg, #0a0a2e 0%, #1a1a4e 50%, #2d1b4e 100%);
}
.sky.morning { background: linear-gradient(180deg, #ff9a8b 0%, #ffc3a0 40%, #ffd89b 100%); }
.sky.day { background: linear-gradient(180deg, #4facfe 0%, #87ceeb 60%, #b0e0e6 100%); }
.sky.sunset { background: linear-gradient(180deg, #2c3e50 0%, #e74c3c 40%, #f39c12 80%, #f1c40f 100%); }
.sky.night { background: linear-gradient(180deg, #000428 0%, #004e92 100%); }
.sky.room { background: linear-gradient(180deg, #3e2723 0%, #5d4037 50%, #6d4c41 100%); }
.sky.office { background: linear-gradient(180deg, #455a64 0%, #607d8b 50%, #78909c 100%); }

/* Stars */
.stars { position: absolute; width: 100%; height: 100%; pointer-events: none; }
.star {
  position: absolute;
  background: #fff;
  border-radius: 50%;
  animation: twinkle 3s infinite;
}
@keyframes twinkle {
  0%, 100% { opacity: 0.3; }
  50% { opacity: 1; }
}

/* Sun & Moon */
.celestial {
  position: absolute;
  width: 90px; height: 90px;
  border-radius: 50%;
  transition: all 3s ease;
}
.sun {
  background: radial-gradient(circle, #fff 0%, #ffd700 50%, #ff8c00 100%);
  box-shadow: 0 0 80px #ffd700, 0 0 120px #ff8c00;
  top: 70%; left: 50%;
  transform: translate(-50%, -50%);
}
.sun.rise { top: 50%; }
.sun.high { top: 15%; width: 80px; height: 80px; }
.sun.set { top: 75%; background: radial-gradient(circle, #fff 0%, #ff6b35 50%, #c0392b 100%); }

.moon {
  background: radial-gradient(circle, #fff 0%, #e0e0e0 70%, #bdbdbd 100%);
  box-shadow: 0 0 40px rgba(255,255,255,0.5);
  top: 15%; right: 15%;
  display: none;
}
.moon.visible { display: block; }

/* Clouds */
.clouds { position: absolute; width: 100%; height: 100%; pointer-events: none; }
.cloud {
  position: absolute;
  background: rgba(255,255,255,0.8);
  border-radius: 50px;
  animation: drift 30s linear infinite;
}
.cloud::before, .cloud::after {
  content: '';
  position: absolute;
  background: inherit;
  border-radius: 50%;
}
.cloud::before { width: 50px; height: 50px; top: -25px; left: 15px; }
.cloud::after { width: 70px; height: 70px; top: -30px; right: 15px; }
@keyframes drift {
  from { transform: translateX(-200px); }
  to { transform: translateX(calc(100vw + 200px)); }
}

/* Mountains */
.mountains {
  position: absolute;
  bottom: 0; left: 0;
  width: 100%; height: 45%;
  z-index: 2;
}
.mountain {
  position: absolute;
  bottom: 0;
  width: 0; height: 0;
}
.mountain-1 {
  left: -5%;
  border-left: 400px solid transparent;
  border-right: 400px solid transparent;
  border-bottom: 350px solid #2c3e50;
}
.mountain-2 {
  left: 25%;
  border-left: 500px solid transparent;
  border-right: 500px solid transparent;
  border-bottom: 450px solid #1a252f;
}
.mountain-3 {
  right: -10%;
  border-left: 450px solid transparent;
  border-right: 450px solid transparent;
  border-bottom: 400px solid #34495e;
}

/* Ground */
.ground {
  position: absolute;
  bottom: 0; left: 0;
  width: 100%; height: 18%;
  background: linear-gradient(180deg, #3d2817 0%, #1a0f08 100%);
  z-index: 3;
}

/* Indoor scenes */
.indoor-scene {
  position: absolute;
  bottom: 0; left: 0;
  width: 100%; height: 40%;
  z-index: 3;
  display: none;
}
.indoor-scene.active { display: block; }

.room-floor {
  position: absolute;
  bottom: 0; left: 0;
  width: 100%; height: 30%;
  background: linear-gradient(180deg, #8d6e63 0%, #5d4037 100%);
}
.room-wall {
  position: absolute;
  top: 0; left: 0;
  width: 100%; height: 70%;
  background: linear-gradient(180deg, #d7ccc8 0%, #a1887f 100%);
}
.desk {
  position: absolute;
  bottom: 30%; left: 50%;
  transform: translateX(-50%);
  width: 300px; height: 80px;
  background: linear-gradient(180deg, #6d4c41 0%, #4e342e 100%);
  border-radius: 5px;
}
.desk::before {
  content: '';
  position: absolute;
  top: -40px; left: 50%;
  transform: translateX(-50%);
  width: 60px; height: 40px;
  background: #263238;
  border-radius: 3px;
  box-shadow: 0 0 20px rgba(100,200,255,0.3);
}

/* Character */
.character-container {
  position: absolute;
  bottom: 15%;
  left: -300px;
  z-index: 10;
  width: 280px;
  height: 480px;
  transition: left 3s ease-in-out;
}
.character-container.center { left: calc(50% - 140px); }
.character-container.right { left: calc(100% - 300px); }
.character-container.left { left: 20px; }

.character {
  width: 100%;
  height: 100%;
  animation: breathe 3s ease-in-out infinite;
}
@keyframes breathe {
  0%, 100% { transform: translateY(0); }
  50% { transform: translateY(-4px); }
}

/* Walking animation */
.character-container.walking {
  animation: walkBounce 0.5s ease-in-out infinite;
}
@keyframes walkBounce {
  0%, 100% { transform: translateY(0); }
  50% { transform: translateY(-8px); }
}

/* Limb animations */
.leg-left { transform-origin: 140px 340px; }
.leg-right { transform-origin: 160px 340px; }
.arm-left-g { transform-origin: 110px 230px; }
.arm-right-g { transform-origin: 190px 230px; }

.character-container.walking .leg-left {
  animation: walkLegL 0.5s ease-in-out infinite;
}
.character-container.walking .leg-right {
  animation: walkLegR 0.5s ease-in-out infinite;
}
.character-container.walking .arm-left-g {
  animation: walkArmL 0.5s ease-in-out infinite;
}
.character-container.walking .arm-right-g {
  animation: walkArmR 0.5s ease-in-out infinite;
}
@keyframes walkLegL {
  0%, 100% { transform: rotate(-20deg); }
  50% { transform: rotate(20deg); }
}
@keyframes walkLegR {
  0%, 100% { transform: rotate(20deg); }
  50% { transform: rotate(-20deg); }
}
@keyframes walkArmL {
  0%, 100% { transform: rotate(20deg); }
  50% { transform: rotate(-20deg); }
}
@keyframes walkArmR {
  0%, 100% { transform: rotate(-20deg); }
  50% { transform: rotate(20deg); }
}

/* Talking */
.character.talking .arm-left-g { animation: talkArmL 1.2s ease-in-out infinite; }
.character.talking .arm-right-g { animation: talkArmR 1.2s ease-in-out infinite; }
@keyframes talkArmL {
  0%, 100% { transform: rotate(-5deg); }
  50% { transform: rotate(-30deg); }
}
@keyframes talkArmR {
  0%, 100% { transform: rotate(5deg); }
  50% { transform: rotate(30deg); }
}

.mouth {
  transition: all 0.1s;
  transform-origin: 150px 190px;
}
.character.talking .mouth {
  animation: talkMouth 0.25s ease-in-out infinite;
}
@keyframes talkMouth {
  0%, 100% { transform: scaleY(1); }
  50% { transform: scaleY(2.2) scaleX(1.2); }
}

/* Celebrating */
.character.celebrating .arm-left-g { animation: celebrateL 0.4s ease-in-out infinite; }
.character.celebrating .arm-right-g { animation: celebrateR 0.4s ease-in-out infinite; }
.character.celebrating { animation: jump 0.6s ease-in-out infinite; }
@keyframes celebrateL {
  0%, 100% { transform: rotate(-140deg); }
  50% { transform: rotate(-160deg); }
}
@keyframes celebrateR {
  0%, 100% { transform: rotate(140deg); }
  50% { transform: rotate(160deg); }
}
@keyframes jump {
  0%, 100% { transform: translateY(0); }
  50% { transform: translateY(-30px); }
}

/* Thinking */
.character.thinking .arm-right-g { animation: think 2s ease-in-out infinite; }
@keyframes think {
  0%, 100% { transform: rotate(0deg); }
  50% { transform: rotate(-90deg); }
}

/* Working */
.character.working .arm-left-g { animation: workL 0.8s ease-in-out infinite; }
.character.working .arm-right-g { animation: workR 0.8s ease-in-out infinite; }
@keyframes workL {
  0%, 100% { transform: rotate(-10deg); }
  50% { transform: rotate(-40deg); }
}
@keyframes workR {
  0%, 100% { transform: rotate(10deg); }
  50% { transform: rotate(40deg); }
}

/* Speech Bubble */
.speech-bubble {
  position: absolute;
  top: 5%;
  left: 50%;
  transform: translateX(-50%);
  background: rgba(255, 255, 255, 0.97);
  color: #1a1a2e;
  padding: 25px 35px;
  border-radius: 25px;
  max-width: 700px;
  width: 85%;
  font-size: 24px;
  font-weight: 700;
  text-align: center;
  box-shadow: 0 15px 50px rgba(0,0,0,0.6);
  z-index: 20;
  opacity: 0;
  transition: opacity 0.5s;
  line-height: 1.6;
  border: 3px solid #d4af37;
}
.speech-bubble.visible { opacity: 1; animation: bubblePop 0.5s ease; }
.speech-bubble::after {
  content: '';
  position: absolute;
  bottom: -25px;
  left: 50%;
  transform: translateX(-50%);
  border: 18px solid transparent;
  border-top-color: rgba(255, 255, 255, 0.97);
}
@keyframes bubblePop {
  0% { transform: translateX(-50%) scale(0.5); opacity: 0; }
  100% { transform: translateX(-50%) scale(1); opacity: 1; }
}

/* Narrator indicator */
.speaker-icon {
  position: absolute;
  bottom: 10px;
  right: 10px;
  width: 30px; height: 30px;
  background: #d4af37;
  border-radius: 50%;
  display: flex;
  align-items: center;
  justify-content: center;
  color: #1a0f08;
  font-size: 14px;
}
.sound-waves {
  position: absolute;
  bottom: 15px;
  right: 50px;
  display: flex;
  gap: 3px;
  align-items: center;
  opacity: 0;
  transition: opacity 0.3s;
}
.sound-waves.active { opacity: 1; }
.sound-wave {
  width: 3px;
  background: #d4af37;
  border-radius: 2px;
  animation: wave 0.8s ease-in-out infinite;
}
.sound-wave:nth-child(1) { height: 10px; animation-delay: 0s; }
.sound-wave:nth-child(2) { height: 18px; animation-delay: 0.1s; }
.sound-wave:nth-child(3) { height: 25px; animation-delay: 0.2s; }
.sound-wave:nth-child(4) { height: 18px; animation-delay: 0.3s; }
.sound-wave:nth-child(5) { height: 10px; animation-delay: 0.4s; }
@keyframes wave {
  0%, 100% { transform: scaleY(0.5); }
  50% { transform: scaleY(1.5); }
}

/* Controls */
.controls {
  position: fixed;
  bottom: 20px;
  left: 50%;
  transform: translateX(-50%);
  display: flex;
  gap: 12px;
  z-index: 100;
  flex-wrap: wrap;
  justify-content: center;
}
.control-btn {
  background: linear-gradient(135deg, #d4af37 0%, #b8941f 100%);
  color: #1a0f08;
  border: none;
  padding: 12px 22px;
  border-radius: 30px;
  font-size: 14px;
  font-weight: 700;
  cursor: pointer;
  transition: all 0.3s;
  font-family: 'Cairo', sans-serif;
  box-shadow: 0 5px 20px rgba(212,175,55,0.4);
}
.control-btn:hover {
  transform: translateY(-3px);
  box-shadow: 0 8px 25px rgba(212,175,55,0.6);
}
.control-btn:disabled { opacity: 0.5; cursor: not-allowed; }

.lang-btn {
  position: fixed;
  top: 20px;
  left: 20px;
  background: rgba(212,175,55,0.2);
  border: 1px solid rgba(212,175,55,0.5);
  color: #d4af37;
  padding: 8px 18px;
  border-radius: 25px;
  cursor: pointer;
  font-size: 14px;
  font-weight: 700;
  z-index: 100;
  font-family: 'Cairo', sans-serif;
}

.movie-title {
  position: fixed;
  top: 20px;
  right: 20px;
  color: #d4af37;
  font-size: 22px;
  font-weight: 800;
  text-shadow: 0 2px 10px rgba(0,0,0,0.8);
  z-index: 100;
}

.progress-bar {
  position: fixed;
  top: 0; left: 0;
  height: 4px;
  background: linear-gradient(90deg, #d4af37, #f39c12);
  width: 0%;
  z-index: 200;
  transition: width 0.3s;
}

.particle {
  position: absolute;
  pointer-events: none;
  z-index: 15;
  animation: floatUp 3s ease-out forwards;
}
@keyframes floatUp {
  0% { opacity: 1; transform: translateY(0) scale(1) rotate(0deg); }
  100% { opacity: 0; transform: translateY(-300px) scale(0.3) rotate(360deg); }
}

/* Intro overlay */
.intro-overlay {
  position: fixed;
  top: 0; left: 0;
  width: 100%; height: 100%;
  background: rgba(0,0,0,0.95);
  z-index: 300;
  display: flex;
  align-items: center;
  justify-content: center;
  flex-direction: column;
  color: #d4af37;
  text-align: center;
  padding: 20px;
}
.intro-overlay h1 {
  font-size: 48px;
  margin-bottom: 20px;
  animation: fadeInUp 1s ease;
}
.intro-overlay p {
  font-size: 20px;
  color: #ddd;
  margin-bottom: 30px;
  animation: fadeInUp 1s ease 0.3s both;
}
.intro-overlay button {
  padding: 15px 40px;
  background: linear-gradient(135deg, #d4af37 0%, #b8941f 100%);
  color: #1a0f08;
  border: none;
  border-radius: 30px;
  font-size: 18px;
  font-weight: 700;
  cursor: pointer;
  font-family: 'Cairo', sans-serif;
  animation: fadeInUp 1s ease 0.6s both;
  transition: all 0.3s;
}
.intro-overlay button:hover {
  transform: scale(1.05);
  box-shadow: 0 10px 30px rgba(212,175,55,0.5);
}
@keyframes fadeInUp {
  from { opacity: 0; transform: translateY(30px); }
  to { opacity: 1; transform: translateY(0); }
}

@media (max-width: 768px) {
  .speech-bubble { font-size: 17px; padding: 18px 22px; }
  .character-container { width: 200px; height: 350px; }
  .movie-title { font-size: 16px; }
  .control-btn { padding: 10px 16px; font-size: 12px; }
  .intro-overlay h1 { font-size: 32px; }
  .intro-overlay p { font-size: 16px; }
}
</style>
</head>
<body>

<div class="progress-bar" id="progressBar"></div>

<button class="lang-btn" onclick="toggleLang()" id="langBtn">English</button>
<div class="movie-title" id="movieTitle">🎬 فيلم النجاح</div>

<!-- Intro Overlay -->
<div class="intro-overlay" id="introOverlay">
  <h1 id="introTitle">🎬 فيلم النجاح</h1>
  <p id="introText">اضغط على الزر لبدء الفيلم مع الصوت</p>
  <button onclick="startMovie()" id="introBtn">▶ ابدأ الفيلم</button>
</div>

<div class="cinema">
  <div class="sky" id="sky">
    <div class="stars" id="stars"></div>
    <div class="sun celestial" id="sun"></div>
    <div class="moon celestial" id="moon"></div>
    <div class="clouds" id="clouds"></div>
  </div>
  
  <div class="mountains" id="mountains">
    <div class="mountain mountain-1"></div>
    <div class="mountain mountain-2"></div>
    <div class="mountain mountain-3"></div>
  </div>
  
  <div class="ground" id="ground"></div>
  
  <div class="indoor-scene" id="indoorScene">
    <div class="room-wall"></div>
    <div class="room-floor"></div>
    <div class="desk"></div>
  </div>
  
  <div class="speech-bubble" id="speechBubble"></div>
  
  <div class="character-container" id="charContainer">
    <svg class="character" id="character" viewBox="0 0 300 500" xmlns="http://www.w3.org/2000/svg">
      <!-- Shadow -->
      <ellipse cx="150" cy="490" rx="70" ry="10" fill="rgba(0,0,0,0.4)"/>
      
      <!-- Left Leg -->
      <g class="leg-left">
        <rect x="125" y="340" width="25" height="130" rx="12" fill="#2c3e50"/>
        <ellipse cx="137" cy="480" rx="20" ry="8" fill="#1a1a1a"/>
      </g>
      
      <!-- Right Leg -->
      <g class="leg-right">
        <rect x="150" y="340" width="25" height="130" rx="12" fill="#2c3e50"/>
        <ellipse cx="163" cy="480" rx="20" ry="8" fill="#1a1a1a"/>
      </g>
      
      <!-- Body -->
      <path d="M 105 230 Q 105 220 115 215 L 185 215 Q 195 220 195 230 L 195 350 Q 195 360 185 360 L 115 360 Q 105 360 105 350 Z" fill="#c0392b"/>
      
      <!-- Tie -->
      <polygon points="150,220 145,240 155,240" fill="#f1c40f"/>
      <polygon points="145,240 155,240 160,300 150,310 140,300" fill="#f1c40f"/>
      
      <!-- Neck -->
      <rect x="140" y="200" width="20" height="20" fill="#e8b88a"/>
      
      <!-- Left Arm -->
      <g class="arm-left-g">
        <rect x="85" y="230" width="22" height="110" rx="11" fill="#c0392b"/>
        <ellipse cx="96" cy="345" rx="12" ry="15" fill="#e8b88a"/>
      </g>
      
      <!-- Right Arm -->
      <g class="arm-right-g">
        <rect x="193" y="230" width="22" height="110" rx="11" fill="#c0392b"/>
        <ellipse cx="204" cy="345" rx="12" ry="15" fill="#e8b88a"/>
      </g>
      
      <!-- Head -->
      <ellipse cx="150" cy="150" rx="55" ry="65" fill="#e8b88a"/>
      
      <!-- Hair -->
      <path d="M 95 130 Q 95 80 150 75 Q 205 80 205 130 Q 205 110 190 100 Q 170 90 150 92 Q 130 90 110 100 Q 95 110 95 130 Z" fill="#2c1810"/>
      
      <!-- Ears -->
      <ellipse cx="95" cy="155" rx="8" ry="12" fill="#e8b88a"/>
      <ellipse cx="205" cy="155" rx="8" ry="12" fill="#e8b88a"/>
      
      <!-- Eyebrows -->
      <path d="M 115 130 Q 125 125 135 130" stroke="#2c1810" stroke-width="3" fill="none" stroke-linecap="round"/>
      <path d="M 165 130 Q 175 125 185 130" stroke="#2c1810" stroke-width="3" fill="none" stroke-linecap="round"/>
      
      <!-- Eyes -->
      <ellipse cx="125" cy="145" rx="8" ry="10" fill="#fff"/>
      <ellipse cx="175" cy="145" rx="8" ry="10" fill="#fff"/>
      <circle cx="125" cy="147" r="5" fill="#2c1810"/>
      <circle cx="175" cy="147" r="5" fill="#2c1810"/>
      <circle cx="126" cy="145" r="1.5" fill="#fff"/>
      <circle cx="176" cy="145" r="1.5" fill="#fff"/>
      
      <!-- Nose -->
      <path d="M 150 155 Q 145 170 150 175 Q 155 170 150 155" fill="#d4a574"/>
      
      <!-- Mouth -->
      <path class="mouth" d="M 135 185 Q 150 195 165 185" stroke="#8b3a2e" stroke-width="3" fill="#c0392b" stroke-linecap="round"/>
      
      <!-- Blush -->
      <ellipse cx="110" cy="170" rx="10" ry="6" fill="rgba(255,150,150,0.3)"/>
      <ellipse cx="190" cy="170" rx="10" ry="6" fill="rgba(255,150,150,0.3)"/>
    </svg>
  </div>
  
  <!-- Sound indicator -->
  <div class="sound-waves" id="soundWaves">
    <div class="sound-wave"></div>
    <div class="sound-wave"></div>
    <div class="sound-wave"></div>
    <div class="sound-wave"></div>
    <div class="sound-wave"></div>
  </div>
</div>

<div class="controls">
  <button class="control-btn" onclick="pauseMovie()" id="pauseBtn">
    <i class="fas fa-pause"></i> <span id="pauseText">إيقاف</span>
  </button>
  <button class="control-btn" onclick="restartMovie()" id="restartBtn">
    <i class="fas fa-redo"></i> <span id="restartText">إعادة</span>
  </button>
  <button class="control-btn" onclick="toggleMute()" id="muteBtn">
    <i class="fas fa-volume-up" id="muteIcon"></i>
  </button>
</div>

<script>
let currentLang = 'ar';
let isMuted = false;
let isPlaying = false;
let isPaused = false;
let currentScene = 0;
let animationTimeout = null;
let currentUtterance = null;

const scenes = {
  ar: [
    {
      text: "في يومٍ من الأيام، كان هناك شابٌ يُدعى أحمد...",
      sky: "night",
      action: "idle",
      position: "center",
      duration: 6000,
      indoor: false
    },
    {
      text: "كان يحلم بأن يصبح ناجحاً في حياته...",
      sky: "night",
      action: "thinking",
      position: "center",
      duration: 6000,
      indoor: false
    },
    {
      text: "في كل ليلة، كان يفكر في مستقبله ويضع الخطط...",
      sky: "night",
      action: "thinking",
      position: "center",
      duration: 6000,
      indoor: true
    },
    {
      text: "عندما أشرقت الشمس، استيقظ بعزيمةٍ وإصرار!",
      sky: "morning",
      action: "walking",
      position: "center",
      duration: 6000,
      indoor: false
    },
    {
      text: "قال لنفسه بصوتٍ عالٍ: النجاح ليس حلماً، بل هو قرار!",
      sky: "morning",
      action: "talking",
      position: "center",
      duration: 7000,
      indoor: false
    },
    {
      text: "ذهب إلى عمله، وبدأ يعمل بجدٍّ واجتهاد...",
      sky: "day",
      action: "walking",
      position: "right",
      duration: 6000,
      indoor: false
    },
    {
      text: "كان يعمل كل يوم بكدٍّ وإخلاص...",
      sky: "day",
      action: "working",
      position: "center",
      duration: 6000,
      indoor: true
    },
    {
      text: "واجه الصعوبات والتحديات بشجاعة...",
      sky: "day",
      action: "talking",
      position: "center",
      duration: 6000,
      indoor: false
    },
    {
      text: "لم يستسلم أبداً، بل كان يتعلم من كل فشل!",
      sky: "day",
      action: "talking",
      position: "left",
      duration: 6000,
      indoor: false
    },
    {
      te