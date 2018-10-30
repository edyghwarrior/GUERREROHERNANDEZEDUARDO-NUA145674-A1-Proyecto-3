interface Atributos{
  void calculos();

}

class Atributos1p1 implements Atributos{
  
  Atributos1p1(){
  vid1=2400;
  def1=10;
  att1=300;
  
  vid1a=2400;
  }
  
  void calculos(){
  }
}

class Atributos2p1 implements Atributos{
  
  Atributos2p1(){
  vid1=3000;
  def1=70;
  att1=200;
  
  vid1a=3000;
  }
  
  void calculos(){
    
  }
}

class Atributos3p1 implements Atributos{
  
  Atributos3p1(){
  vid1=2200;
  def1=20;
  att1=200;
  
  vid1a=2200;
  }
  
  void calculos(){
  }
}

class Atributos4p1 implements Atributos{
  
  Atributos4p1(){
  vid1=1800;
  def1=10;
  att1=200;
  
  vid1a=1800;
  }
  
  void calculos(){
  }
}

class Atributos5p1 implements Atributos{
  
  Atributos5p1(){
  vid1=2000;
  def1=10;
  att1=100;
  
  vid1a=2000;
  }
  
  void calculos(){
  }
}

class Atributos1p2 implements Atributos{
  
  Atributos1p2(){
  vid2=2400;
  def2=10;
  att2=300;
  
  vid2a=2400;
  }
  
  void calculos(){
  }
}

class Atributos2p2 implements Atributos{
  
  Atributos2p2(){
  vid2=3000;
  def2=70;
  att2=200;
  
  vid2a=3000;
  }
  
  void calculos(){
    
  }
}

class Atributos3p2 implements Atributos{
  
  Atributos3p2(){
  vid2=2200;
  def2=20;
  att2=200;
  
  vid2a=2200;
  }
  
  void calculos(){
  }
}

class Atributos4p2 implements Atributos{
  
  Atributos4p2(){
  vid2=1800;
  def2=10;
  att2=200;
  
  vid2a=1800;
  }
  
  void calculos(){
  }
}

class Atributos5p2 implements Atributos{
  
  Atributos5p2(){
  vid2=2000;
  def2=10;
  att2=100;
  
  vid2a=2000;
  }
  
  void calculos(){
  }
}

void especial(){
        if(p1==1 && e==3 && p11==1){
        atributosp1 = new Atributos1p1();
        p11=0;
        }
        
        if(p1==2 && e==3 && p11==1){
        atributosp1 = new Atributos2p1();
        p11=0;
        }
        
        if(p1==3 && e==3 && p11==1){
        atributosp1 = new Atributos3p1();
        p11=0;
        }
        
        if(p1==4 && e==3 && p11==1){
        atributosp1 = new Atributos4p1();
        p11=0;
        }
        
        if(p1==5 && e==3 && p11==1){
        atributosp1 = new Atributos5p1();
        p11=0;
        }
        
         if(p2==1 && e==3 && p12==1){
        atributosp2 = new Atributos1p2();
        p12=0;
        }
        
        if(p2==2 && e==3 && p12==1){
        atributosp2 = new Atributos2p2();
        p12=0;
        }
        
        if(p2==3 && e==3 && p12==1){
        atributosp2 = new Atributos3p2();
        p12=0;
        }
        
        if(p2==4 && e==3 && p12==1){
        atributosp2 = new Atributos4p2();
        p12=0;
        }
        
        if(p2==5 && e==3 && p12==1){
        atributosp2 = new Atributos5p2();
        p12=0;
        }
        
        println(vid1);
        println(vid2);  
}

void turno(){
        if(t==0 & key=='x'){
        vid2 -= (att1 - def2);
        t=1;
        po=1;
        if(p1==5 && po==1){
        vid1 += (30 + random(10)); //regeneración vida zombie
        po=0;
        }
        if(p2==4 && po==1 && (random(1)>.5)){
        vid2 += att1 - def2;       //probabilidad de esquibar
        po=0;
        }
        if(p1==3 && po==1 && (random(1)>.5)){
        vid2 -= att1 - def2;                 //probabilidad de atacar 2 veces
        po=0;
        }
        }
        else if(t==1 & key=='m'){
        vid1 -= (att2 - def1);
        t=0;
        poo=1;
        if(p2==5 && poo==1){
        vid2 += (30 + random(10)); //regeneración vida zombie
        poo=0;
        }
        if(p1==4 && poo==1 && (random(1)>.5)){
        vid1 += att2 - def1;       //probabilidad de esquibar
        poo=0;
        }
        if(p2==3 && po==1 && (random(1)>.5)){
        vid1 -= att2 - def1;                 //probabilidad de atacar 2 veces
        poo=0;
        }
        }
}
