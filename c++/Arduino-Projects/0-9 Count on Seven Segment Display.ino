// To display 0-9 count on seven segment display

#define  a 5//connecting segment  a to PIN5
#define  b 4// connecting segment  b to PIN4
#define  c 6// connecting segment  c to PIN6
#define  d 9// connecting segment  d to PIN9
#define  e 8// connecting segment  e to PIN8
#define  f 3// connecting segment  f to PIN3
#define  g 2// connecting segment  g to PIN2

void setup(){
  pinMode(a, OUTPUT); 
  pinMode(b, OUTPUT); 
  pinMode(c, OUTPUT); 
  pinMode(d, OUTPUT); 
  pinMode(e, OUTPUT); 
  pinMode(f, OUTPUT);  
  pinMode(g, OUTPUT);  
}



void loop() 
{
//ZERO
digitalWrite(a,LOW);
digitalWrite(b,LOW);
digitalWrite(c,LOW);
digitalWrite(d,LOW);
digitalWrite(e,LOW);
digitalWrite(f,LOW);
digitalWrite(g,HIGH);
delay(1000);
//ONE
digitalWrite(a,HIGH);
digitalWrite(b,LOW);
digitalWrite(c,LOW);
digitalWrite(d,HIGH);
digitalWrite(e,HIGH);
digitalWrite(f,HIGH);
digitalWrite(g,HIGH);
delay(1000);
//TWO
digitalWrite(a,LOW);
digitalWrite(b,LOW);
digitalWrite(c,HIGH);
digitalWrite(d,LOW);
digitalWrite(e,LOW);
digitalWrite(f,HIGH);
digitalWrite(g,LOW);
delay(1000);
//THREE
digitalWrite(a,LOW);
digitalWrite(b,LOW);
digitalWrite(c,LOW);
digitalWrite(d,LOW);
digitalWrite(e,HIGH);
digitalWrite(f,HIGH);
digitalWrite(g,LOW);
delay(1000);
  
//FOUR
digitalWrite(a,HIGH);
digitalWrite(b,LOW);
digitalWrite(c,LOW);
digitalWrite(d,HIGH);
digitalWrite(e,HIGH);
digitalWrite(f,LOW);
digitalWrite(g,LOW);
delay(1000);
  
//Five
digitalWrite(a,LOW);
digitalWrite(b,HIGH);
digitalWrite(c,LOW);
digitalWrite(d,LOW);
digitalWrite(e,HIGH);
digitalWrite(f,LOW);
digitalWrite(g,LOW);
delay(1000);
  
//Six
digitalWrite(a,LOW);
digitalWrite(b,HIGH);
digitalWrite(c,LOW);
digitalWrite(d,LOW);
digitalWrite(e,LOW);
digitalWrite(f,LOW);
digitalWrite(g,LOW);
delay(1000);

//seven
digitalWrite(a,LOW);
digitalWrite(b,LOW);
digitalWrite(c,LOW);
digitalWrite(d,HIGH);
digitalWrite(e,HIGH);
digitalWrite(f,HIGH);
digitalWrite(g,HIGH);
delay(1000);

//Eight
digitalWrite(a,LOW);
digitalWrite(b,LOW);
digitalWrite(c,LOW);
digitalWrite(d,LOW);
digitalWrite(e,LOW);
digitalWrite(f,LOW);
digitalWrite(g,LOW);
delay(1000);

//Nine
digitalWrite(a,LOW);
digitalWrite(b,LOW);
digitalWrite(c,LOW);
digitalWrite(d,LOW);
digitalWrite(e,HIGH);
digitalWrite(f,LOW);
digitalWrite(g,LOW);
delay(1000);

}
