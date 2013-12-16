/* --------------------------------------------------------------------------
 * CPageIdle 
 * author:  Gigi Ho
 * date:  15/12/2012 
 * ----------------------------------------------------------------------------
 */

class CPageIdle extends CScene{
  CPageIdle(){
    super();
  }

  boolean Init(){
    if(!super.Init()){
      return false;
    }
    
    CLogger.Debug("[CPageIdle.Init]");
    
    //Init drawable components inside CLayer
    CLabel testLabel = new CLabel("This is PageIdle");  
    testLabel.fFontSize = 20;
    testLabel.SetPosition(width/2,20);
    this.AddChild(testLabel);
    
    return true;
  } 
}
