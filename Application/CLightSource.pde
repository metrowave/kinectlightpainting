public class CLightSource extends CBrush {
  float fX;
  float fY;
  float fPx;
  float fPy;
  float fFlow = 0.25;
  void draw() {

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

