/* --------------------------------------------------------------------------
 * This is main application program
 * @author:  Gigi Ho
 * date:  15/12/2012 (m/d/y)
 * ----------------------------------------------------------------------------
 */
 
//import testpackage.*;
//import tuio.*;

import java.util.*;
 
 
CPageController pageController = null;
void setup(){
  size(640, 480); //size of the canvas
  background(0,0,0);
   
 // noLoop();
  pageController = new CPageController();
  pageController.GotoPageIdle();
   
   CLogger.Debug("test logger");
}
 
void draw() {
  pageController.curPage.Draw();
}

void mousePressed(){
  pageController.GotoPageCapture();
}
