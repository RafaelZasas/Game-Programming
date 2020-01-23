package  {
	
	import flash.display.*;
	import flash.events.*;
	
	
	public class Arrow extends MovieClip {
		public var angleDegrees:Number;
		
		public function Arrow() {
			// constructor : place the arrow in the center of the screen
			this.x=200;
			this.y=200;
		}
		
		function turn (targetX:Number,targetY:Number){
			// COMPUTE TJE DISTANCE BETWEEN THE TWO POINTS 
			
			var dx:Number = this.x-targetX;
			var dy:Number= this.y-targetY;
			var distance:Number = Math.sqrt(Math.pow(dx,2)+Math.pow(dy,2));
			
			// COMPUTE THE ANGLE BETWEEN THE TWO POINTS 
			var angleRadians:Number = Math.atan2(dy,dx);
			
			// CONVERT THE ANGLE FROM RADIANS TO DEGREES FOR THE VARIABLE r
			angleDegrees = angleRadians*180/Math.PI;
		}
	}
	
}
