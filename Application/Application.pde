/* --------------------------------------------------------------------------
 * This is main application program
 * @author:  Gigi Ho
 * date:  15/12/2012 (m/d/y)
 * ----------------------------------------------------------------------------
 */
 
//import testpackage.*;
//import tuio.*;

import java.util.*;
 
 
CPageController g_pageController = null; //this is a singleton
IInputController g_inputController = null; //@TODO: remove from global and passing to classes if necessary
void setup(){
  size(640, 480); //size of the canvas
  background(0,0,0);
   
 // noLoop();
  g_pageController = new CPageController();
  g_pageController.GotoPageIdle();
   
   CLogger.Debug("test logger");
   
   //@TODO: define InputInterface here
   g_inputController = new CInputMouse();
   g_inputController.Init();
   
}
 
void draw() {
  g_pageController.curPage.Draw();
}

void mousePressed(){
  g_pageController.GotoPageCapture();
}
