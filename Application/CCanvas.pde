public class CCanvas extends CNode implements IDrawable{

  public int iX=0;
  public int iY=0;
  
  CCanvas(){
     size(this.iX, this.iY);
  }
  
  
// TBD Cbrush
 
 void Draw () {
    // stoke(this.CBrush);
     line(mouseX, mouseY, pmouseX, pmouseY);
 }
  
}
