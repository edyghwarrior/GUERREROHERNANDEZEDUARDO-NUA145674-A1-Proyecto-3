class Escenario{
  
  Escenario(){
  }
  
  void fondo(){
    
    
    if(e==0){
        fill(0);
        rect(0,0,960,640);
        fill(255,0,0);
        textFont(fuente1);
        textSize(100);
        text("RESIDENT EVIL",160,220);
        textSize(50);
        text("LAST ESCAPE",330,320);
        fill(255);
        tx+=dx;
        if(tx>1){
          dx*= -1;
        }
        else if(tx<.997){
        dx *= -1;
        }
        pushMatrix();
        scale(tx);
        textSize(30);
        text("Presiona Enter",380,480);
        popMatrix();

    }
    
    if(e==1){
        char x=34;
        tx+=dx;
        if(tx>1){
          dx*= -1;
        }
        else if(tx<.997){
        dx *= -1;
        }
        fill(0);
        rect(0,0,960,640);
        textFont(fuente2);
        textSize(40);
        fill(255,100,100);
        text("  ¡La ciudad de Raccoon City ha sido infectada",20,40);
        text("              con el monstruoso virus T!",20,80);
        textSize(35);
        text("     Plagada de zombies, los supervivientes no",20,140);
        text("     tienen más opción que luchar por los pocos",20,180);
        text("     recursos que quedan, y así lograr escapar…",20,220);
        zombie.zombie(730,-20,0.45,0.45);
        textSize(40);
        fill(220);
        text("  Instrucciones:",20,300);
        textSize(35);
        text("- Este juego requiere de 2 jugadores, escojan un personaje",20,350);
        text("   para combatir en la siguiente pantalla de selección.",20,390);
        text("- Una vez escogidos los personajes (usar minusculas), cada",20,430);
        text("   jugador podrá atacar a su contrincante una vez por turno.",20,470);
        text("- El juego terminara cuando la vida de cualquiera llegue a 0.",20,510);
        
        pushMatrix();
        scale(tx);
        textSize(40);
        text(x,585,600);
        text("Enter",600,600);
        text(x,685,600);
        text("para continuar",710,600);
        popMatrix();
        
    }
    
    if(e==2 & p1==0){
        image(Seleccion,0,0);
        fill(0);
        textFont(fuente1);
        textSize(60);
        text("Escoge un personaje",220,90);
        text("a",80,270);
        text("b",270,270);
        text("c",480,270);
        text("d",700,270);
        text("e",890,270);
    }
    
    if(e==2 & p1>0){
        image(Seleccion,0,0);
        fill(0);
        textFont(fuente1);
        textSize(60);
        text("Escoge un personaje",220,90);
        text("1",80,270);
        text("2",270,270);
        text("3",480,270);
        text("4",700,270);
        text("5",890,270);
    }
    
    if(e==3){
        image(Callejon,0,0);
  }
    
    if(e==4){
      char x=34;
       tx+=dx;
        if(tx>1){
          dx*= -1;
        }
        else if(tx<.997){
        dx *= -1;
        }
        fill(0);
        rect(0,0,960,640);
        textFont(fuente1);
        fill(255,0,0);
        text("YOU ARE DEAD",170,290);
        
        pushMatrix();
        scale(tx);
        fill(255,100,100);
        textFont(fuente2);
        textSize(30);
        text(x,600,600);
        text("Enter",615,600);
        text(x,680,600);
        text("para jugar de nuevo",700,600);
        popMatrix();
        
        if(ganador==1){
        textFont(fuente2);
        fill(255);
        textSize(30);
        text("¡Jugador 2 gana!",400,400);
        t=0;
        p1=0;
        p2=0;
        p11=1;
        p12=1;
        }
        if(ganador==2){
        textFont(fuente2);
        fill(255);
        textSize(30);
        text("¡Jugador 1 gana!",400,400);
        t=0;
        p1=0;
        p2=0;
        p11=1;
        p12=1;
        }        
    }   
  }      
}

 void keyPressed() {
  if (key == ENTER && e==0) {
    e = 1;
  } 
  else if (key == ENTER && e==1) {
    e = 2;
  } 
  else if (key == ENTER && e==4){
    e = 0;
  }
}
