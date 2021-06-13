#line 1 "D:/BAC TECH/PROJET/CLOCK BY djebbi firas & arfeoui fouad & mbarki semah/CLOCK mikroC program/CLOCK.c"

sbit LCD_RS at RB2_bit;
sbit LCD_EN at RB3_bit;
sbit LCD_D4 at RB4_bit;
sbit LCD_D5 at RB5_bit;
sbit LCD_D6 at RB6_bit;
sbit LCD_D7 at RB7_bit;

sbit LCD_RS_Direction at TRISB2_bit;
sbit LCD_EN_Direction at TRISB3_bit;
sbit LCD_D4_Direction at TRISB4_bit;
sbit LCD_D5_Direction at TRISB5_bit;
sbit LCD_D6_Direction at TRISB6_bit;
sbit LCD_D7_Direction at TRISB7_bit;


char keypadPort at PORTD;

 char kp[2];
void main() {
int cr = 8;
int crr = 17;
int i=0;
int time[4];
int s1,s2,m1,m2,h1,h2;

Keypad_Init();
Lcd_Init();
Lcd_Cmd( _LCD_CURSOR_OFF );
Lcd_Out(1,4,"WELCOME");
delay_ms(1000);
Lcd_Cmd(_LCD_CLEAR);
for(cr=17;cr>1;cr--){
 Lcd_Out(1,cr,"THIS CLOCK IS ");
 Lcd_Out(2,crr,"PROGRAMED BY:");
 delay_ms(250);
 Lcd_Cmd(_LCD_CLEAR);
 crr--;
 }
 Lcd_Out(1,1,"THIS CLOCK IS ");
 Lcd_Out(2,1,"PROGRAMED BY :");
 delay_ms(3000);
 Lcd_Cmd(_LCD_Clear);
 Lcd_out(1,1,"DJEBBI FIRAS");
 Delay_ms(2000);
 Lcd_Cmd(_LCD_Clear);
 Lcd_out(1,1,"ARFAOUI FOUED");
 Delay_ms(1500);
 Lcd_Cmd(_LCD_Clear);

Lcd_Out(1,1,"PUT THE TIME:");
delay_ms(2000);
Lcd_Cmd(_LCD_CLEAR);
Lcd_Out(1,5,"HH:MM");

 while(i<2) {

 hhcorect:
 kp[i] = 0;
 do
 {
 kp[i] = keypad_key_click();
 }while(!kp[i]);
 switch(kp[i])
 {
 case 1 : time[i] = 55; break;
 case 2 : time[i] = 52; break;
 case 3 : time[i] = 49; break;
 case 4 : time[i] = 67; break;
 case 5 : time[i] = 56; break;
 case 6 : time[i] = 53; break;
 case 7 : time[i] = 50; break;
 case 8 : time[i] = 48; break;
 case 9 : time[i] = 57; break;
 case 10: time[i] = 54; break;
 case 11: time[i] = 51; break;
 case 12: time[i] = 61; break;
 case 13: time[i] = 47;break;
 case 14: time[i] = 42; break;
 case 15: time[i] = 45; break;
 case 16: time[i] = 43; break;
 }
 if(time[0]>=51 || time[0]<=47 )
 goto hhcorect;
 if (i==1 && time[0]==50 )
 {
 if (time[1]>=52 || time[1]<=47)
 goto hhcorect;
 }
 if(i==1 && time[0]<50 )
 {
 if (time[1]>=58 || time[1]<=47)
 goto hhcorect;
 }
 Lcd_chr(1,i+5,time[i]);
 i++;
 }


 while(2<=i && i<4) {
 mmcorect:
 kp[i] = 0;
 do
 {
 kp[i] = keypad_key_click();
 }while(!kp[i]);

 switch(kp[i])
 {
 case 1 : time[i] = 55; break;
 case 2 : time[i] = 52; break;
 case 3 : time[i] = 49; break;
 case 4 : time[i] = 67; break;
 case 5 : time[i] = 56; break;
 case 6 : time[i] = 53; break;
 case 7 : time[i] = 50; break;
 case 8 : time[i] = 48; break;
 case 9 : time[i] = 57; break;
 case 10: time[i] = 54; break;
 case 11: time[i] = 51; break;
 case 12: time[i] = 61; break;
 case 13: time[i] = 47;break;
 case 14: time[i] = 42; break;
 case 15: time[i] = 45; break;
 case 16: time[i] = 43; break;
 }
 if (time[2] >= 54 || time[2]<= 47)
 goto mmcorect;
 if(i==3 && (time[3] >= 58 || time[3]<=47 ) )
 goto mmcorect;

 Lcd_chr(1,i+6,time[i]);
 i++;
 }

s1 = 48;
s2 = 48;
m1 = time[3];
m2 = time[2];
h1 = time[1];
h2 = time[0];


 while (1) {

 Lcd_Cmd(_LCD_CLEAR);
 Lcd_chr(1,5,h2);
 Lcd_chr_Cp(h1);
 Lcd_chr_Cp(':');
 Lcd_chr_Cp(m2);
 Lcd_chr_Cp(m1);
 Lcd_chr_Cp(':');
 Lcd_chr_Cp(s2);
 Lcd_chr_Cp(s1);
 s1++;

 if (s1==58)
 {
 s2++;
 s1=48;
 }
 if (s2 == 54)
 {
 m1++;
 s2=48;
 }
 if (m1==58)
 {
 m2++;
 m1 = 48;
 }
 if (m2 == 54)
 {
 h1++;
 m2=48;
 }
 if (h1 == 58)
 {
 h2++;
 h1 = 48;
 }
 if (h2 == 50 && h1 == 52)
 {
 s1 = 48;
 s2 = 48;
 m1 = 48;
 m2 = 48;
 h1 = 48;
 h2 = 48;
 }
 delay_ms(1000);
 }
}
