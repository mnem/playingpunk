package noiseandheat.games.playingpunk
{
    import noiseandheat.games.playingpunk.worlds.MyWorld;
    import net.flashpunk.Engine;
    import net.flashpunk.FP;

    /**
     * Copyright (c) 2011 David Wagner
     */
    public class PlayingPunkApp extends Engine
    {
        public function PlayingPunkApp()
        {
            super(800, 600, 60, false);
            FP.world = new MyWorld();
        }

        override public function init():void
        {
            trace("FlashPunk has started successfully!");
        }
    }
}
