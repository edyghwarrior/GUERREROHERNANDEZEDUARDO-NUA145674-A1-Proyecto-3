void seleccion(){
  tx+=dx;
        if(tx>1){
          dx*= -1;
        }
        else if(tx<.997){
        dx *= -1;
        }
        if(p1==0 & p2==0){
        pushMatrix();
        scale(tx);
        textFont(fuente1);
        textSize(40);
        text("Jugador 1",400,170);
        popMatrix();
        
        if (keyPressed){
        switch(key){
        case 'a':
        p1=1;
        break;
        case 'b':
        p1=2;
        break;
        case 'c':
        p1=3;
        break;
        case 'd':
        p1=4;
        break;
        case 'e':
        p1=5;
        break;
      }
    }
    
}
  
        else if(p1>0 & p2==0){
        pushMatrix();
        scale(tx);
        textFont(fuente1);
        textSize(40);
        text("Jugador 2",400,170);
        popMatrix();
        
        if (keyPressed){
        switch(key){
        case '1':
        p2=1;
        break;
        case '2':
        p2=2;
        break;
        case '3':
        p2=3;
        break;
        case '4':
        p2=4;
        break;
        case '5':
        p2=5;
        break;
      }
    }
  }
  
      else if(p1>0 & p2>0){
      e=3;
      }

}

void tu(){
        char x=34;
        if(t==0){
         tx+=dx;
        if(tx>1){
          dx*= -1;
        }
        else if(tx<.997){
        dx *= -1;
        }
        pushMatrix();
        scale(tx);
        fill(255);
        textFont(fuente2);
        textSize(40);
        text("¡Tu turno jugador 1!",320,40);
        popMatrix();
        
        pushMatrix();
        scale(tx);
        fill(0);
        textFont(fuente1);
        textSize(40);
        fill(255,100,100);
        text(x,350,520);
        text("x",370,520);
        text(x,405,520);
        textSize(30);
        fill(100,100,255);
        text("para atacar",310,570);
        popMatrix();
        }
        
        if(t==1){
           tx+=dx;
           if(tx>1){
           dx*= -1;
        }
            else if(tx<.997){
            dx *= -1;
        }
        pushMatrix();
        scale(tx);
        fill(255);
        textFont(fuente2);
        textSize(40);
        text("¡Tu turno jugador 2!",320,40);
        popMatrix();
        
        pushMatrix();
        scale(tx);
        fill(0);
        textFont(fuente1);
        textSize(40);
        fill(255,100,100);
        text(x,560,520);
        text("m",580,520);
        text(x,615,520);
        textSize(30);
        fill(100,100,255);
        text("para atacar",500,570);
        popMatrix();
        }
}
