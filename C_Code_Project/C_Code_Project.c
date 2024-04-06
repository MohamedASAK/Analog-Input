void main() {
    int i=0;
    TRISB = 0;
    while(1){
      i = ADC_Read(0);
      if(i>500){
       PORTB.B0 = 1;
      }
      else{
       PORTB.B0 = 0;
      }
    } 
}