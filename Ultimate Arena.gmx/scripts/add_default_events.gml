defaultE[0,0] = "Cats";
defaultE[0,1] = "Rabid cats begin swarming the fighters from all sides";
defaultE[0,2] = 10;
defaultE[0,3] = 4;
defaultE[0,4] = "$1 is devoured by a group of kittens.";
defaultE[0,5] = "$1 tries to climb a nearby tree to get away from the cats, but it was too late.";
defaultE[0,6] = "$1 trips, giving the cats enough time to incapacitate *1.";
defaultE[0,7] = "$1 dies trying to pet one of the cats.";

defaultE[1,0] = "Poison Fog";
defaultE[1,1] = "A mysterious purple fog covers the arena.";
defaultE[1,2] = 14;
defaultE[1,3] = 4;
defaultE[1,4] = "$1 falls victim to the poison fog.";
defaultE[1,5] = "$1 slowly chokes to death due to the fog.";
defaultE[1,6] = "$1 trips over a rock, giving the fog enough time to fully engulf *1.";
defaultE[1,7] = "$1 thinks they escaped the fog, but the fog corners *1.";

defaultE[2,0] = "Fireants";
defaultE[2,1] = "A bucket of fireants is dumped on all remaining fighters";
defaultE[2,2] = 14;
defaultE[2,3] = 4;
defaultE[2,4] = "$1 is eaten by fireants.";
defaultE[2,5] = "$1 is overcome by a massive horde of fireants.";
defaultE[2,6] = "$1 trips over himself into a mound of fireants, killing *1.";
defaultE[2,7] = "$1 runs as fast as he can, but the fireants catch up and kill *1.";

defaultE[3,0] = "Pirates";
defaultE[3,1] = "Pirates suddenly appear out of nowhere!";
defaultE[3,2] = 20;
defaultE[3,3] = 4;
defaultE[3,4] = "$1 attempts to fight off the pirates, but fails!";
defaultE[3,5] = "$1 is stabbed by a drunk pirate.";
defaultE[3,6] = "$1 trips over himself into a pub full of pirates, killing *1.";
defaultE[3,7] = "$1 runs, but couldn't hide from the pirates.";

defaultE[4,0] = "Ebola";
defaultE[4,1] = "A strain of Ebola is found amongst the fighters!";
defaultE[4,2] = 10;
defaultE[4,3] = 3;
defaultE[4,4] = "$1 couldn't recover from Ebola.";
defaultE[4,5] = "$1 falls to Ebola";
defaultE[4,6] = "$1 is no match for the mighty Ebola virus.";


for(i = 0;i < 5;i++)
{
    ini_open(working_directory + "events\" + defaultE[i,0] + ".ini");
    ini_write_string("event","name",defaultE[i,0]);
    ini_write_string("event","description",defaultE[i,1]);
    ini_write_real("event","death_percentage",defaultE[i,2]);

    ini_write_real("text","total",defaultE[i,3]);

    for(c = 1; c <= defaultE[i,3]; c++)
    {
        ini_write_string("text","s"+string(c),defaultE[i,c+3]);
    }
}
