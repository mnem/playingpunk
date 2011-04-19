package noiseandheat.games.playingpunk.worlds
{
    import net.flashpunk.World;

    import noiseandheat.games.playingpunk.entities.Player;
    import noiseandheat.games.playingpunk.entities.Target;

    /**
     * Copyright (c) 2011 David Wagner
     */
    public class GameWorld extends World
    {
        public function GameWorld()
        {
            add(new Player());
            add(new Target());
        }
    }
}
