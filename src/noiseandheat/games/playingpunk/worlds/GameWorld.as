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
            add(new PlayerEntity());
            add(new TargetEntity());
            add(new FramerateVisualiserEntity());
        }
    }
}
