package noiseandheat.games.playingpunk.worlds
{
    import net.flashpunk.World;

    import noiseandheat.games.playingpunk.entities.FramerateVisualiserEntity;
    import noiseandheat.games.playingpunk.entities.PlayerEntity;
    import noiseandheat.games.playingpunk.entities.TargetEntity;

    /**
     * Copyright (c) 2011 David Wagner
     */
    public class GameWorld extends World
    {

        public function GameWorld()
        {
            add(new FramerateVisualiserEntity());
            add(new TargetEntity());

            for(var i:int = 0; i < 100; i++)
                add(new PlayerEntity());
        }
    }
}
