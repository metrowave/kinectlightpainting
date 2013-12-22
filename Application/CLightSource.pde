public class CLightSource extends CBrush {
  float fX;
  float fY;
  float fPx;
  float fPy;
  float fFlow = 0.25;
  int iSavedTime;
  void draw() {

    int iPassedTime = millis() - iSavedTime;// Keeping a timer so that only part of the current trail is displayed (the not the whole trail from the beginning)
    if (iPassedTime > 200) {
      iSavedTime = millis(); // Save the current time to restart the timer!
      background(128); // !!!!!!ALERT!!!!!! this needs to be changed____________the background variable needs to be put in this
    }
    float targetX = mouseX;
    fX += (targetX - fX) * fFlow;
    float targetY = mouseY;
    fY += (targetY - fY) * fFlow;
    float fWeight = dist(fX, fY, fPx, fPy);
    float fInvWeight=100/fWeight;

    if (fInvWeight>30) {
      fInvWeight=10;
    }
    else {
      fInvWeight=100/fWeight;
    }
    strokeWeight(fInvWeight);
    line(fX, fY, fPx, fPy);
    fPy = fY;
    fPx = fX;
  }
}

