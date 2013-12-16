/* --------------------------------------------------------------------------
 * CPageDisplay 
 * author:  Gigi Ho
 * date:  15/12/2012 
 * ----------------------------------------------------------------------------
 */

class CPageDisplay extends CScene{
  CPageDisplay(){
    super();
  }

  boolean Init(){
    if(!super.Init()){
      return false;
    }
    
    CLogger.Debug("[CPageDisplay.Init]");
    
    //Init drawable components inside CLayer
    CLabel testLabel = new CLabel("This is PageDisplay");  
    testLabel.fFontSize = 20;
    testLabel.SetPosition(width/2,20);
    this.AddChild(testLabel);
    
    return true;
  } 
}
