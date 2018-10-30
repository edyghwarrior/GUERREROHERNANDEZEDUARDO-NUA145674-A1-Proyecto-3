//Resident Evil Last Escape 2.0
//Eduardo Guerrero Hernández
//NUA - 145674
//Grupo - A1
//Proyecto Num. 3

PFont fuente1;
PFont fuente2;

PImage Edy;
PImage Leon;
PImage Elza;
PImage Jill;
PImage Zombie;

PImage Seleccion;

PImage Callejon;

int e=0;
int p1=0;
int p2=0;
int p11=1;
int p12=1;
int t=0;
int po=1;
int poo=1;
int ganador=0;
float dt=0;

float a1,a2;
float b1,b2;
float c1,c2;

  float vid1;
  float def1;
  float att1;
  float vid1a;
  
  float co1;
  float co2;
  
  float vid2;
  float def2;
  float att2;
  float vid2a;


float tx=1;
float dx=.00023;

import processing.sound.*;
SoundFile song1;

Personaje edy;
Personaje leon;
Personaje jill;
Personaje elza;
Personaje zombie;

Atributos atributosp1;
Atributos atributosp2;

Personaje player1;
Personaje player2;

Escenario f;

void setup(){
  size(960,640);
  
  song1 = new SoundFile(this, "Song2.aif");
  song1.amp(.15);
  song1.loop();
  
  fuente1 = loadFont("EvilOfFrankenstein-100.vlw");
  fuente2 = loadFont("AdobeGurmukhi-Regular-60.vlw");
  
  Edy = loadImage("Edy.png");
  Leon = loadImage("Leon.png");
  Elza = loadImage("Elza.png");
  Jill = loadImage("Jill.png");
  Zombie = loadImage("Zombie.png");
  
  Seleccion = loadImage("seleccion.png");
  Callejon = loadImage("Callejon.png");
  
  noStroke();
  f = new Escenario();
  edy = new Personaje();
  leon = new Personaje();
  jill = new Personaje();
  elza = new Personaje();
  zombie = new Personaje();
  
  player1 = new Personaje();
  player2 = new Personaje();
}

      void draw(){
  dt+=0.01;
  f.fondo();
      if(e==2){        
      seleccion();
}
  
      if(e==3){
        player1.escogerp1(p1);
        player2.escogerp2(p2);
        player1.vidap1();
        player2.vidap2();
        turno();
        tu();
        especial();
        if(vid1<=0){
        e=4;
        ganador=1;
        }
        if(vid2<=0){
        e=4;
        ganador=2;
        }
        
        for(int i= 0;i<width;i+=10){
        for(int j = 0; j<height;j+=10){
        fill(noise(i*0.01+dt,j*0.01,dt)*255,80);
        rect(i,j,10,10);
    }
   }
  }
}
