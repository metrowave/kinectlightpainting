public class CPageController{
  CScene curPage = null;
  
  void GotoPageIdle(){
    curPage = new CPageIdle();
    curPage.Init();
    CLogger.Info("Page displayed");
  }
  
  void GotoPageCapture(){
    curPage = new CPageCapture();
    curPage.Init();
  }
  
  void GotoPageDisplay(){
    curPage = new CPageDisplay();
    curPage.Init();
    
  }
  
  
  
}
