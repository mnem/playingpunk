package noiseandheat.games.playingpunk.entities
{
    import net.flashpunk.Entity;
    import net.flashpunk.FP;
    import net.flashpunk.graphics.Image;
    import net.flashpunk.utils.Input;

    import noiseandheat.games.playingpunk.assets.R;

    /**
     * Copyright (c) 2011 David Wagner
     */
    public class Player extends Entity
    {
        protected static const JITTER:int = 33;
        protected static const HALF_JITTER:int = JITTER/2;

        protected var jitterX:int;
        protected var jitterY:int;
        protected var jitterUpdate:int;

        public function Player(x:Number = 0, y:Number = 0)
        {
            var image:Image = new Image(R.player_png);
            image.centerOO();

            super(x, y, image, null);
        }

        override public function update():void
        {
            if(--jitterUpdate <= 0)
            {
                jitterX = FP.rand(JITTER) - HALF_JITTER;
                jitterY = FP.rand(JITTER) - HALF_JITTER;
                jitterUpdate = FP.rand(FP.assignedFrameRate / 3) + FP.assignedFrameRate / 3;
            }

            var tX:int = Input.mouseX + jitterX;
            var tY:int = Input.mouseY + jitterY;
            var distance:Number = distanceToPoint(tX, tY);
            var v:Number = distance * 0.1;

            moveTowards(tX, tY, v);
        }
    }
}
