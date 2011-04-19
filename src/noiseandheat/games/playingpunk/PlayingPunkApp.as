package noiseandheat.games.playingpunk
{
    import net.flashpunk.Engine;
    import net.flashpunk.FP;

    import noiseandheat.games.playingpunk.worlds.MyWorld;

    /**
     * Copyright (c) 2011 David Wagner
     */
    [SWF(backgroundColor="#000000", frameRate="30", width="480", height="320")]
    public class PlayingPunkApp extends Engine
    {
        public function PlayingPunkApp()
        {
            super(480, 320, 30, false);
            FP.console.enable();
            FP.world = new MyWorld();
        }

        override public function init():void
        {
        }
    }
}
