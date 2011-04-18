package noiseandheat.games.playingpunk.worlds
{
    import net.flashpunk.World;

    import noiseandheat.games.playingpunk.entities.Player;

    /**
     * Copyright (c) 2011 David Wagner
     */
    public class MyWorld extends World
    {
        public function MyWorld()
        {
            add(new Player());
        }
    }
}
