int numberCircles = 70;

float[] circlePositionX = new float[numberCircles];
float[] circlePositionY = new float[numberCircles];

float[] circleVelocityX = new float[numberCircles];
float[] circleVelocityY = new float[numberCircles];


void setup() {

  size(500, 500);
  noStroke();
  smooth();
  colorMode(RGB);
  frameRate(60);

  for (int i=0; i<numberCircles; i++) {
    circlePositionX[i] = random(width);
    circlePositionY[i] = random(height);
    circleVelocityX[i] = random(-5, 5);
    circleVelocityY [i] = random(-5, 5);
  }
}

void draw() {

  background(mouseX-mouseY, mouseY-mouseX, 250, 70);//bei jing de yan se
  for (int i=0; i < numberCircles; i++) {
    fill((mouseY+30-255), (mouseX+30), (100-mouseX));

    ellipse(circlePositionX [i], circlePositionY[i], i, i);//tuo yuan de wei zhi yu su du

    circlePositionX [i] +=circleVelocityX [i];//yuan de wei zhi yu xun huan su du
    circlePositionY[i] +=circleVelocityY[i];

    if ((circlePositionX[i]<0)||(circlePositionY[i]>width)) {
      circleVelocityX[i]*=-1;
    }

    if ((circlePositionY[i]<0)||(circlePositionY[i]>height)) {
      circleVelocityY[i]*=-1;
      //ying gai shi shu biao de yi dong bian hua
    }
  }
}