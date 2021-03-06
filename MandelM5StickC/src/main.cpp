#include <Arduino.h>
#include <M5StickC.h>
#include "Wire.h"

HardwareSerial uart1(1);

// convert float to Q12-formatted 16bit binary
uint16_t float2q12(float a)
{
  uint16_t i, f, d;
  float aa;
  if (a > 0) aa = a; else aa = -a;
  i = (byte)(aa);
  f = (uint16_t)((aa - (byte)aa) * 4096);
  d = (i << 12)| f;
  if (a < 0) d = ~d + 1;
  return(d);
}

void send_word(uint16_t d)
{
  uart1.write(d >> 8);
  uart1.write(d & 0xff);
}

uint8_t f = 0;

#define X 511
#define Y 255

float width = 3;
float xs = -2.0;
float ys = -1.0;
float dp = 0.0125;

void setup() {
  M5.begin();
  Serial.begin(115200);
  // https://qiita.com/T-YOSH/items/0ce41136c535c723affb
  // https://github.com/m5stack/M5-ProductExampleCodes/tree/master/Hat/hat-joystick/Arduino/Joystick_hat
  uart1.begin(115200, SERIAL_8N1, 33, 32); // RX=33/TX=32
  Wire.begin(0, 26, 100000);
}

int x, y;

void start_calc()
{
  send_word(X);
  uart1.write(Y);
  dp = width / (float)X;
  send_word(float2q12(xs));
  send_word(float2q12(ys));
  send_word(float2q12(dp));
  send_word(float2q12(dp));
  send_word(100);
  x = 0; y = 0; f = 1;
//  M5.Lcd.clear(BLACK);
  Serial.println("Settings:");
  Serial.print("x: "); Serial.print(xs);
  Serial.print(" - "); Serial.println(xs + width);
  Serial.print("y: "); Serial.print(ys);
  Serial.print(" - "); Serial.println(ys + width*2.0/3.0);
  Serial.println(dp);
  Serial.println(width);
}

uint8_t fj = 0;

int8_t jx, jy;
uint8_t jb, jb0;

#define JOY_ADDR 0x38

void loop() {

  Wire.beginTransmission(JOY_ADDR);
  Wire.write(0x02); 
  Wire.endTransmission();
  Wire.requestFrom(JOY_ADDR, 3);
  if (Wire.available()) {
    jx = Wire.read();
    jy = Wire.read();
    jb = Wire.read();

//    Serial.print(jx); Serial.print(' '); Serial.print(jy); Serial.print(' '); Serial.println(jb);
#define JOY_TH_M -30
#define JOY_TH_P 30

    if (jx < JOY_TH_M && fj == 0){ xs -= dp * (X/4); start_calc(); fj = 1;}
    if (jx > JOY_TH_P && fj == 0){ xs += dp * (X/4); start_calc(); fj = 1;}
    if (jy < JOY_TH_M && fj == 0){ ys -= dp * (Y/4); start_calc(); fj = 1;}
    if (jy > JOY_TH_P && fj == 0){ ys += dp * (Y/4); start_calc(); fj = 1;}
    if (fj == 1 
        && jx < JOY_TH_P && jx > JOY_TH_M
        && jy < JOY_TH_P && jy > JOY_TH_M) fj = 0;
  }
  M5.update();
  // BtnA = "M5" button
  // BtnB = RightSide Button
  if (M5.BtnB.wasReleased()) { // reset position
    xs = -2.0; ys = -1.0; width = 3.0; start_calc();
  }
  #define MAG_STEP 1.5

  if (jb0 == 1 && jb == 0) { // zoom-out
    float xc, yc;
    xc = xs + (width / 2.0); yc = ys + (width / 3.0);
    Serial.println(xc); Serial.println(yc);
    width = width / MAG_STEP;
    dp = dp / MAG_STEP;
    xs = xc - (width / 2.0); ys = yc - (width / 3.0);
    start_calc();
    delay(100);
  }
  jb0 = jb;
  if (M5.BtnA.wasReleased()) { // zoom-in
    float xc, yc;
    xc = xs + (width / 2.0); yc = ys + (width / 3.0);
    Serial.println(xc); Serial.println(yc);
    width = width * MAG_STEP;
    dp = dp * MAG_STEP;
    xs = xc - (width / 2.0); ys = yc - (width / 3.0);
    start_calc();
  }
}
