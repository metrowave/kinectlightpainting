/* --------------------------------------------------------------------------
 * This is CSystemInfoLabel class desc
 * author:  Gigi Ho
 * date:  15/12/2012
 * ----------------------------------------------------------------------------
 */
 
public class CSystemInfoLabel extends CLabel{
  CSystemInfoLabel(){
    Init();
  }

  
  boolean Init(){
    if(!super.Init("")){
       return false; 
    }
    
    this.SetPosition(width,height);
    this.iAlignX = RIGHT;
    this.iAlignY = BOTTOM;
    
    return true;
  }
  
  void Update(){
    super.Update();
    this.strText = "frameCount: " + frameCount + "\n"                
                   + "frameRate: " + nf(frameRate,2,2);
    
  }
  
  
  
}
