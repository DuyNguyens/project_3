PImage anime;
void setup(){
  size(800,600);
  anime = loadImage("animegirl.jpg"); 
}
void draw(){
  loadPixels();
  anime.loadPixels();
  for(int x = 0; x < width; x++){
    for(int y = 0; y < height; y++){
      int loc = x+y*width;
      float b = brightness(anime.pixels[loc]);
      if (b>mouseX){
        pixels[loc] = color(255);
      } else {
        pixels[loc] = color(0);
}
  }
  updatePixels();
}
}
