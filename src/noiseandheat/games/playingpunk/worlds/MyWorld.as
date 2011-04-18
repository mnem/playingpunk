package noiseandheat.games.playingpunk.worlds
{
    import net.flashpunk.World;

    import noiseandheat.games.playingpunk.entities.Player;
    import noiseandheat.games.playingpunk.entities.Target;

    /**
     * Copyright (c) 2011 David Wagner
     */
    public class MyWorld extends World
    {
        public function MyWorld()
        {
            add(new Player());
            add(new Target());
        }
    }
}
