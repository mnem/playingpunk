package noiseandheat.games.playingpunk
{
    import flash.system.Capabilities;
    import net.flashpunk.Engine;
    import net.flashpunk.FP;

    import noiseandheat.games.playingpunk.worlds.GameWorld;

    import flash.display.Sprite;
    import flash.events.Event;

    /**
     * Copyright (c) 2011 David Wagner
     */
    [SWF(backgroundColor="#000000", frameRate="30", width="480", height="320")]
    public class PlayingPunkApp extends Engine
    {
        public function PlayingPunkApp()
        {
            super(
                Capabilities.screenResolutionX,
                Capabilities.screenResolutionY,
                30,
                false);

            FP.world = new GameWorld();
        }

        override public function init():void
        {
            FP.console.enable();
            FP.log("Game size: ", width, height);
        }
    }
}
