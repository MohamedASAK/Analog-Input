#line 1 "C:/Users/moham/Desktop/embedded systems c programming/Analog Input/C_Code_Project/C_Code_Project.c"
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
