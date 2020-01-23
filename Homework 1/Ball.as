package  {
	
	import flash.display.*;
	import flash.events.*;
	import fl.motion.easing.Back;
	
	public class Ball extends MovieClip {
		
			//DATA ATTRIBUTES 
			public var radius:Number;
			public var vX:int;
			public var vY:int;
			public var mX:int;
			public var mY:int;
			
			// COSTANTS 
			private const REVERSE:int=-1;
			public var BOTTOM:Number=-1;
			private var TOP:Number;
			private var LEFT:Number;
			private var RIGHT:Number;
		
			public function Ball(xpos:int, ypos:int){
			// constructor code				
			
				
				mX=xpos; // changed to random vals passed in the instantiation 
				mY=ypos;
				vX= Math.random()*21+10; // set velocity to random values 
				vY=Math.random()*30+5;
			}
			
			// WRITE A FUNCTION TO SET THE BOUNDARIES 
			
			// H=height , w= width and r =radius
			public function setBoundaries(h:Number,w:Number, r:Number):void{
				BOTTOM = h-r;
				TOP =r;
				LEFT =r;
				RIGHT =w-r;
			}
			
			// FUNCTION TO MOVE THE POSITION OF THE BALL 
			
			public function movePosition():void{
				
				//TASK 1: MOVE THE BALL
				mX+=vX;
				mY+=vY;
				
				// TASK 2: CHECK FOR COLLISIONS 
				
				if( mY< TOP){
					vY*= REVERSE;
					mY=TOP;
				}
				else if(mY>BOTTOM){
					vY*=REVERSE;
					mY= BOTTOM;
				}
				
				
				if( mX< LEFT){
					vX*= REVERSE;
					mX=LEFT;
				}
				else if(mX>RIGHT){
					vX*=REVERSE;
					mX= RIGHT;
				}
				
				
			}
			
			

			
		}
	}
	

