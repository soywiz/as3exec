package  {
	import asunit.TestRunner;
	import flash.display.Sprite;
	import flash.events.Event;
	import flash.utils.setTimeout;
	
	public class Main extends Sprite {
		public function Main():void {
			if (stage) init(); else addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event = null):void {
			removeEventListener(Event.ADDED_TO_STAGE, init);
			setTimeout(main, 0);
		}
		
		protected function main():void {
			Stdio.init(stage, loaderInfo);
			var testRunner:TestRunner = new TestRunner();
			testRunner.addTestCase(new HelloTestCase());
			testRunner.run();
		}
	}
}