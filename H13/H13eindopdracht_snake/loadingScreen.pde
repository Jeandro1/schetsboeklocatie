<<<<<<< Updated upstream
void Loading(){
  Music = new SoundFile(this, "sounds/Music.mp3");
=======
void loadInit(){
Music = new SoundFile(this, "sounds/Music.mp3");
>>>>>>> Stashed changes
  Recieve = new SoundFile(this, "sounds/Recieve.mp3");
  Win = new SoundFile(this, "sounds/Win.mp3");
  Dead = new SoundFile(this, "sounds/Dead.mp3");
  gameState = 1;
}
