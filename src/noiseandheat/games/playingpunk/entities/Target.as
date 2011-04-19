package noiseandheat.games.playingpunk.entities
{
    import net.flashpunk.Entity;
    import net.flashpunk.FP;
    import net.flashpunk.graphics.Emitter;
    import net.flashpunk.utils.Ease;

    import flash.display.BitmapData;

    /**
     * Copyright (c) 2011 David Wagner
     */
    public class Target extends Entity
    {
        protected const MIN_PARTICLES:int = 50;
        protected const MAX_PARTICLES:int = 200;

        protected var e:Emitter;
        protected var stoke:Boolean = true;

        public function Target()
        {
            e = new Emitter(new BitmapData(3, 3), 3, 3);
            e.newType("flurry", [0]);
            e.setMotion("flurry", 0, 64, 1.5, 360, 64, 1.5, Ease.quadIn);
            e.setAlpha("flurry", 1, 0);
            e.setColor("flurry", 0xff3300, 0);
            e.x = 8;
            e.y = 8;

            super(0, 0, e, null);

            setHitbox(16, 16);
            type = "target";

            spawn();
        }

        public function spawn():void
        {
            moveTo(FP.rand(FP.width - 20) + 10, FP.rand(FP.height - 20) + 10);
        }

        override public function update():void
        {
            if(stoke)
            {
                e.emit("flurry", 0, 0);
                if(e.particleCount >= MAX_PARTICLES)
                {
                    stoke = false;
                }
            }
            else if(e.particleCount < MIN_PARTICLES)
            {
                stoke = true;
            }
        }
    }
}
