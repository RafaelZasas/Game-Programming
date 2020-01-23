package  {
	import flash.display.*;
	import flash.events.*;
	
	public class TargetApp extends MovieClip{
		private var target:Target;
		private var arrow:Arrow;
		public function TargetApp() {
			// constructor code
				target = new Target();
				arrow = new Arrow();
				addChild(target);
				addChild(arrow)
				
				addEventListener(Event.ENTER_FRAME, update);
			}
			
			function update(event:Event){
					target.x = mouseX;
					target.y = mouseY;
				arrow.turn(target.x, target.y);
				arrow.rotation = arrow.angleDegrees;
			}
		}
	}
	

