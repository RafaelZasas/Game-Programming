package  {
	
	import flash.display.*;
	import flash.events.*;
	import fl.motion.easing.Back;
	
	
	public class PongApp extends MovieClip {
		private var ballList:Array;
		private var nBalls:int=16;
		
		
		
		public function PongApp() {
			// constructor code
			ballList = new Array();
			// TASK 1; CREATE A BALL AND ADD IT TO THE X=SCREEN
			for(var i:int=0;i<nBalls;i++){
				var ball:Ball = new Ball(Math.random()%30+50,Math.random()%30+50);
				ball.x=ball.mX;
				ball.y = ball.mY;
				ball.width=Math.random()*15+10; // to give them random sizes 
				ball.height=ball.width;
				ball.radius = ball.width/2;
				ballList.push(ball);
				addChild(ball);
				//TASK 2: UPDATE THE BOUBDARIES OF THE BALL 
				ball.setBoundaries(600,500, ball.radius);
			
			
			}
			
			// TASK 3: CREATE THE GAME LOOP 
			addEventListener(Event.ENTER_FRAME, update);

			

		}
		
			public function update(event:Event){
				
			for(var i:int=0;i<nBalls;i++){
				
				ballList[i].movePosition();
				ballList[i].x=ballList[i].mX;
				ballList[i].y = ballList[i].mY;
			}

				
			}
			
			
	}
	
}
