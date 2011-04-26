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
    public class PlayerEntity extends Entity
    {
        protected static const JITTER:int = 132;
        protected static const HALF_JITTER:int = JITTER/2;

        protected var jitterX:int;
        protected var jitterY:int;
        protected var jitterUpdate:int;

        protected var targetX:int;
        protected var targetY:int;


        public function PlayerEntity()
        {
            var image:Image = new Image(R.player_png);
            image.centerOO();

            super(FP.width/2, FP.height/2, image, null);
            targetX = this.x;
            targetY = this.y;
        }

        override public function update():void
        {
            if(Input.mouseDown)
            {
                targetX = Input.mouseX;
                targetY = Input.mouseY;
            }

            if(--jitterUpdate <= 0)
            {
                jitterX = FP.rand(JITTER) - HALF_JITTER;
                jitterY = FP.rand(JITTER) - HALF_JITTER;
                jitterUpdate = FP.rand(FP.assignedFrameRate / 3) + FP.assignedFrameRate / 3;
            }

            var tX:int = targetX + jitterX;
            var tY:int = targetY + jitterY;
            var distance:Number = distanceToPoint(tX, tY);
            var v:Number = distance * 0.1;

            moveTowards(tX, tY, v);

            var t:TargetEntity = collide("target", x, y) as TargetEntity;
            if(t) t.spawn();
        }
    }
}
