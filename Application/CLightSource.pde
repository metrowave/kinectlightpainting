
public class CLightSource extends CBrush{
  
  
  public float fSizeLight=11.5;
  public int iColorLightR=0;
  public int iColorLightG=0;
  public int iColorLightB=0;
  
  
  CLightSource() {
      Brightness(this.fSizeLight, this.iColorLightR, this.iColorLightG, this.iColorLightB);
  }
  
  CLightSource(float fSizeLight) {
    Brightness(fSizeLight, this.iColorLightR, this.iColorLightG, this.iColorLightB);
  }
  
  CLightSource(int iColorLightR, int iColorLightG, int iColorLightB) {
     Brightness(this.fSizeLight, iColorLightR, iColorLightG, iColorLightB);
  }
  
  
  boolean Brightness(float fSizeLight, int iColorLightR, int iColorLightG, int iColorLightB){
    
    this.fSizeLight = fSizeLight;
    this.iColorLightR=iColorLightR;
    this.iColorLightG=iColorLightG;
    this.iColorLightB=iColorLightB;
    
    return true;
  }
    
    
  void Update(){    
    this.pfFont = createFont(this.strFontName, this.fFontSize, this.bFontSmooth);
    textFont(pfFont);  
    textAlign(iAlignX, iAlignY);
  }
  
  void Draw(){
    this.Update();

    text(this.strText, this.GetPositionX(), this.GetPositionY());

  }
  

  
  
}
