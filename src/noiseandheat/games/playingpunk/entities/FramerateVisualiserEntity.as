package noiseandheat.games.playingpunk.entities
{
    import net.flashpunk.Entity;
    import net.flashpunk.FP;
    import net.flashpunk.graphics.Graphiclist;
    import net.flashpunk.graphics.Image;

    /**
     * Copyright (c) 2011 HuzuTech
     */
    public class FramerateVisualiserEntity extends Entity
    {
        protected const SIZE:int = 8;
        protected var RESOLUTION:int = 30;

        protected var framerateVisualiser:Graphiclist;

        public function FramerateVisualiserEntity(x:Number = 0, y:Number = 0)
        {
            RESOLUTION = FP.assignedFrameRate;

            framerateVisualiser = new Graphiclist();

            var img:Image;
            var c:uint;
            for(var i:int = 0; i < RESOLUTION; i++)
            {
                if(i % 5 == 0)
                {
                    img = Image.createRect(SIZE, i % 10 == 0? SIZE * 1.5 : SIZE, FP.colorLerp(0xff0000, 0x00ff00, i/RESOLUTION));
                }
                else
                {
                    img = Image.createCircle(SIZE/2, FP.colorLerp(0xff0000, 0x00ff00, i/RESOLUTION));
                }

                img.x = SIZE * i;
                framerateVisualiser.add(img);
            }

            super(x, y, framerateVisualiser, null);
        }

        override public function update():void
        {
            var blips:int;

            if(!isNaN(FP.frameRate))
            {
                var normalised:Number = FP.frameRate / FP.assignedFrameRate;
                blips = FP.clamp(Math.round(framerateVisualiser.children.length * normalised), 0, framerateVisualiser.children.length - 1);
            }

            for(var blip:int = 0; blip < framerateVisualiser.children.length; blip++)
            {
                if(blip <= blips)
                {
                    framerateVisualiser.children[blip].visible = true;
                }
                else
                {
                    framerateVisualiser.children[blip].visible = false;
                }
            }
        }
    }
}
