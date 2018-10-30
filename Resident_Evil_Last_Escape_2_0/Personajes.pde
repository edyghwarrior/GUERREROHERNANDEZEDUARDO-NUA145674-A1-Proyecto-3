class Personaje{
  
  Personaje(){
  }
  
  void escogerp1(int n_){
    switch(n_){
      case 1:
        player1.jill(80,250,0.4,0.4);
      break;
      case 2:
        player1.leon(10,250,0.5,0.5);
      break;
      case 3:
        player1.elza(60,250,0.5,0.5);
      break;
      case 4:
        player1.edy(60,260,0.5,0.5);
      break;
      case 5:
        player1.zombie(300,250,-0.5,0.5);
      break;
    }
  
  }
  
  void escogerp2(int n_){
    switch(n_){
      case 1:
        player2.jill(880,250,-0.4,0.4);
      break;
      case 2:
        player2.leon(950,250,-0.5,0.5);
      break;
      case 3:
        player2.elza(900,250,-0.5,0.5);
      break;
      case 4:
        player2.edy(900,260,-0.5,0.5);
      break;
      case 5:
        player2.zombie(650,250,0.5,0.5);
      break;
    }
  
  }
  
  
  
  void vidap1(){
    
    co1 = (vid1*100/vid1a);
    co2 = (vid2*100/vid2a);
    
    tx+=dx;
        if(tx>1){
          dx*= -1;
        }
        else if(tx<.997){
        dx *= -1;
        }
  if(vid1>((vid1a*70)/100)){
    
  fill(0+((255-(255*co1/100))*3),255,0,100);
  rect(60,160,200,100,10);
  pushMatrix();
  scale(tx);
  fill(0);
  textFont(fuente2);
  textSize(40);
  text("FINE",120,220);
  popMatrix();
  }
  else if(vid1<=((vid1a*70)/100) && vid1>=((vid1a*30)/100)){
  fill(255,255-((255-(255*co1/70))*1.4),0,100);
  rect(60,160,200,100,10);
  pushMatrix();
  scale(tx);
  fill(0);
  textFont(fuente2);
  textSize(40);
  text("CAUTION",80,220);
  popMatrix();
  }
  else if(vid1<((vid1a*30)/100)){
  fill(255,0,0,100);
  rect(60,160,200,100,10);
  pushMatrix();
  scale(tx);
  fill(0);
  textFont(fuente2);
  textSize(40);
  text("DANGER",90,220);
  popMatrix();
  }
  }
  
  void vidap2(){
    tx+=dx;
        if(tx>1){
          dx*= -1;
        }
        else if(tx<.997){
        dx *= -1;
        }
  if(vid2>((vid2a*70)/100)){
  fill(0+((255-(255*co2/100))*3),255,0,100);
  rect(700,160,200,100,10);
  pushMatrix();
  scale(tx);
  fill(0);
  textFont(fuente2);
  textSize(40);
  text("FINE",760,220);
  popMatrix();
  }
  else if(vid2<=((vid2a*70)/100) && vid2>=((vid2a*30)/100)){
  fill(255,255-((255-(255*co2/70))*1.4),0,100);
  rect(700,160,200,100,10);
  pushMatrix();
  scale(tx);
  fill(0);
  textFont(fuente2);
  textSize(40);
  text("CAUTION",720,220);
  popMatrix();
  }
  else if(vid2<((vid2a*30)/100)){
  fill(255,0,0,100);
  rect(700,160,200,100,10);
  pushMatrix();
  scale(tx);
  fill(0);
  textFont(fuente2);
  textSize(40);
  text("DANGER",730,220);
  popMatrix();
  }
}

  void edy(float a_,float b_,float t_,float r_){
  pushMatrix();
  translate(a_,b_);
  scale(t_,r_);
  image(Edy,0,0);
  popMatrix();
}

void leon(float a_,float b_,float t_, float r_){
  pushMatrix();
  translate(a_,b_);
  scale(t_,r_);
  image(Leon,0,0);
  popMatrix();
}

void jill(float a_,float b_,float t_,float r_){ 
  pushMatrix();
  translate(a_,b_);
  scale(t_,r_);
  image(Jill,0,0);
  popMatrix();
}

void elza(float a_,float b_,float t_, float r_){
  pushMatrix();
  translate(a_,b_);
  scale(t_,r_);
  image(Elza,0,0);
  popMatrix();
}

void zombie(float a_,float b_,float t_, float r_){
  pushMatrix();
  translate(a_,b_);
  scale(t_,r_);
  image(Zombie,0,0);
  popMatrix();
}
}
