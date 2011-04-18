package noiseandheat.games.playingpunk
{
    import net.flashpunk.Engine;
    import net.flashpunk.FP;

    import noiseandheat.games.playingpunk.worlds.MyWorld;

    /**
     * Copyright (c) 2011 David Wagner
     */
    public class PlayingPunkApp extends Engine
    {
        public function PlayingPunkApp()
        {
            super(800, 600, 60, false);
            FP.console.enable();
            FP.world = new MyWorld();
        }

        override public function init():void
        {
        }
    }
}
