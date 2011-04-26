package noiseandheat.games.playingpunk
{
    import net.flashpunk.Engine;
    import net.flashpunk.FP;

    import noiseandheat.games.playingpunk.worlds.GameWorld;

    import flash.display.StageQuality;
    import flash.system.Capabilities;

    /**
     * Copyright (c) 2011 David Wagner
     */
    [SWF(backgroundColor="#000000", frameRate="60", width="480", height="320")]
    public class PlayingPunkApp extends Engine
    {
        public function PlayingPunkApp()
        {
            super(
                Capabilities.screenResolutionX,
                Capabilities.screenResolutionY,
                60,
                false);

            FP.world = new GameWorld();
        }

        override public function setStageProperties():void
        {
            super.setStageProperties();

            stage.quality = StageQuality.LOW;
        }
    }
}
