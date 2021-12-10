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
      float r = red(anime.pixels[loc]);
      float g = green(anime.pixels[loc]);
      float b = blue(anime.pixels[loc]);
      float d = dist(mouseX, mouseY,x, y);
      float factor = map(d, 0, 200, 2, 0);
      
      pixels[loc] = color(r*factor, g*factor, b*factor);
}
  }
  updatePixels();
}
