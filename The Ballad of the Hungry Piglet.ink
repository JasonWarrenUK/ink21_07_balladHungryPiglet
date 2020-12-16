// This is where I'd put extra Ink files that are linked in this story, using the INCLUDE command.

# theme: dark
# author: Jason Warren

-> Intro

=== DevNotes ===
TODO: Visualise Tag Hierarchy
TODO: Try out Conditional Text
TODO: Try out the different Alternative Text formats

/*
Common Notes
    This is a fallback choice
*/

/*
Logic Order
    1. Removal of * choices
    2. Evaluation of Knots/Stitches seen
*/

/*
Commands Used
    && = and
    || = or
    xxxxx # xxxxx = Game text, then tag
*/
  
/*  
Alternative Text
    Types
        Sequence: {First | Second | Say this forever.}
        Cycle: {&First | Second | Let's start again from first.}
        Limited: {!First | Second | Fuck this, I'm off to the pub.}
        Shuffle: {~First | Second | I can't count}
    Notes
        Can be nested
        Can have blank elements
        Can include diverts
        Can be used in choices
*/

/*
Conditional Text
    Format: 
        {TestCondition: If test true | If test false}
    Notes:
        Can be nested
*/

====== Intro ======
-> Intro1
    = Intro1
    # IMAGE: rabbitpiglet03.jpg
        + It's me, Rupert J Piggit, and I [am hungersome.]need something crunchy to quiet my rumbly grumbletum.
            -> Intro2
            
    = Intro2
        + {not Coda} ["Why are you telling me this, Rupert J Piggit?"]
            -> Intro3
        
        + {Coda} Yes, yes Rupert. We know."
            -> Intro3
            
    = Intro3
        I was really hoping you would be a kindness and help me find something snacksome so I don't eat all of the Rabbit's lunchtime food.
        Please will you help me get some munchings?
        
        + {not Coda} ["I suppose so."]
            -> Intro4
        
        + {Coda} ["Yes yes yes, let's get on with it."]
            -> Start
            
    = Intro4
    # CLEAR
        You win this game by making sure the piglet gets something crunchy to munch upon.
        
        + {not Coda} ["Bloody piglets. Alright, I understand."]
            -> Start
        
        + {Coda} ["I'm aware."]
            -> Start
            
    = Again
        Well, I suppose we should get this pig fed.
        + [Sigh and go again.]
            # CLEAR
            -> Intro.Intro1

====== Tantrum ======
TODO: Try wrapping the various tantrums into sequences
    = BigBoots01
    # CLEAR
    # IMAGE: rabbitpiglet01.jpg
        OH SO WE FINK WE'RE TOO GOOD FOR A PICTURE OF PIGGITS, DO WE?
        + ["..."]
            -> BigBoots02
            
    = BigBoots02
    # CLEAR
    # IMAGE: rabbitpiglet02.bmp
        WOT'S WRONG WITH PIGGIT PICS?
        + ["..."]
            -> BigBoots03
            
    = BigBoots03
    # CLEAR
    # IMAGE: rabbitpiglet03.jpg
        FINE YOU WON'T GET NO MORE PIGGIT PICCIES.
        + ["Thankyou."]
            -> Start
            
    = VeryRudeIndeed1
    # IMAGE: rabbitpiglet01.jpg
        + "Can we not[ do this please?"]-"
            -> VeryRudeIndeed2
    
    = VeryRudeIndeed2
    # CLEAR
    # IMAGE: rabbitpiglet02.bmp
        + "L[ook, I really am very sorry if I hurt your feelings, small piglet, but I have quite a lot to do."]-"
            -> VeryRudeIndeed3
        
    = VeryRudeIndeed3
    # CLEAR
    # IMAGE: rabbitpiglet03.jpg
        + ["ALRIGHT!!!!"]
            -> Intro.Intro4
        
====== Start ======
# CLEAR
    Rabbit was busy saving Hyrule.
    -> Rabbit_Plays
    
    = Rabbit_Plays
        "Piggit," said she. "I am going to save the world!"
        
        + [Good lord!] -> Astonished
        
        + {not Ritz_Seen}{not Sorting.Game1} [Nod wisely.] Rabbit asked me why my head was flopping about, but I was not really listening because<>
            -> Ritz_Seen
        
        + {not Ritz_Seen}{Sorting.Game1}{not Sorting.Game2} [Try to look like I'm paying attention whilst really looking for a cracker.] -> Ritz_Seen
        
        + {Ritz_Seen}{not Sorting.Game2} [Check if that cracker's under the table like I fink it is.] -> Ritz_Seen2
        
        + {Ritz_Seen}{Sorting.Game2} [GIMME CRACKER.]
            -> Middle.Ritz_Got3
    
    = Astonished
        "Save the world, Rabbit?" I said, most perturberous. "But it's almost time for tea! You must be doing jokings, missis!"
        
        I squealed my snorting outrage and, after five minutes (when I had calmed down a little), Rabbit said "I am quite serious."
        
        + "Oh, I see!" I said, [showing my brainy best]but really I was quite confuddled.
            Best to just listen as Rabbits are generally right.
            -> Listen01
            
        + But I had more importit fings to be doing, for [something grabbed my attention from the corner of my eye.]-> Ritz_Seen

TODO: Create Ritz.SeenX (1, 2, 3 etc), whilst keeping the general Ritz.Seen as well
    = Ritz_Seen
        I had spotted a Ritz cracker under the coffee table!
        
        I decided to listen carefully to the Rabbit for now, though, as it's very srs biz.
        And also I have been told not to snuffle under the table. ->Listen01
        
    = Ritz_Seen2
        Yep, der it is.
        -> Middle
        
    = Listen01
        + "I'm all ears[!"]" 
            But finking about it, though, I am actually maybe a bit curly tail.
            ->Listen02
            
    = Listen02
        + {not Coda} [This isn't really that important, Rupert.] Also trotters.
            ->Listen03_A
        
        + {Coda} && {not Listen03_B} [Get a move on Rupert!]
            ->Listen03_B
        
        + {Listen03_B} [Sigh.]
            ->Listen03_C

    = Listen03_A
        + [I'm getting a bit annoyed now.]
            -> Middle
    
    = Listen03_B
        This conversation seems very familiar.
        
        + We've had it[ before.]- 
            I wonder if we've had it before.
            ->Listen04_B
    
    = Listen03_C
        I keep getting this feeling of Dejipu.
        
        + Do you mean Deja Vu?
            -> Middle
    
    = Listen04_B
        + Lit[erally two minutes ago, Rupert.]-
            Anyway you're wasting valuable biscuit time with your snuffling, so help me get the munches please.
            ->Middle



====== Middle ======
{not Coda}{Start.Ritz_Seen} -> Ritz_Get1
{Coda}{Start.Ritz_Seen} -> Ritz_Get2
{not Start.Ritz_Seen} -> Ending
TODO: This fucking line
= Ritz_Get1
    Anyway, I knew where the cracker was so I decided wevva to get it wiv a sneaky trotter.
    
    + Of course.
        -> Ritz_Got1
        
    + I don't fink so. Dangerous.
        -> Ending
        
= Ritz_Got1
    -> Ending

= Ritz_Get2
    Anyway, I knew where the cracker was so I decided wevva to get it wiv a sneaky trotter.
    
    + Of course.
        -> Ritz_Got2
        
    + NO IT IS DISRESPIGTFUL.
        -> Ending

= Ritz_Got2
    -> Ending
    
= Ritz_Got3
    -> Ending

====== Ending ======
# CLEAR 
-> Death_Mountain
    
= Death_Mountain
    Rabbit carried on proudly...
    "I shall scale Death Mountain and put an end to Ganon's schemes!"
    
    * "That sounds scary!"
        She huffed and miffed a bit and said something about how I wouldn't understand because my brain has joy con drift.
            S-> Rabbit_Happy
    
    * "You're very brave!"
        "Well I'm glad you finally noticed!"
            S-> Rabbit_Happy
    
    + {not Sorting.Game1}{Middle.Ritz_Got1} [Munch the cracker.] -> Ritz_Munch
    + {Sorting.Game1}{not Sorting.Game2}{Middle.Ritz_Got2} [Munch the cracker.] -> Ritz_Munch
    + {Sorting.Game2}{Middle.Ritz_Got3} [YESSSSS I GOT THE CRACKER PUT IT IN MY PIGGIT FACE I HAV WAITED TOO LONG.] -> Ritz_Munch
    
    + ->
        I honestly don't know what I said next because I was tooting happily, but apparently it wasn't too bad because s->Rabbit_Happy

= Rabbit_Happy
TODO: Make sure the incoming choice has an "S" of the appropriate case.
    <>he carried on, turning her attention back to blowing up a deer.
    
    + [But sadly, I was still hungry.]
        -> Coda

= Ritz_Munch
# CLEAR
    I did a crunch-crunch-crunch and patted my porky belly.
    
    + [And possibly a little toot.]
        -> Coda



====== Coda ======
# CLEAR
-> Sorting


====== Sorting ======
TODO: Try out Read Counts as conditions
= FuckUpFilter
	{not Start.Ritz_Seen}{Middle.Ritz_Got1 || Middle.Ritz_Got2 || Middle.Ritz_Got3 || Ending.Ritz_Munch} -> Silo_FuckUp

= TryNumber
	{Ending.Ritz_Munch} -> Win.Game
	{not Ending.Ritz_Munch}{not Game1} -> Game1
	{not Ending.Ritz_Munch}{Game1}{not Game2} -> Game2
	{not Ending.Ritz_Munch}{Game2}{not Game3} -> Game3
	    // {not Ending.Ritz_Munch}{Game3}

= Game1
  {not Ending.Ritz_Munch} -> Game1_Lose
= Game2
  {not Ending.Ritz_Munch} -> Game2_Lose
= Game3
  {not Ending.Ritz_Munch} -> Game3_Lose

TODO: Edit the Evaluation1_Lose, Evaluation2_Lose & Evaluation3_Lose stitches to incorporate the new Ritz.SeenX.
= Game1_Lose
	{Start.Ritz_Seen}{Middle.Ritz_Got1} -> Loss1.Hold
	{Start.Ritz_Seen}{not Middle.Ritz_Got1} -> Loss1.Floor
	{not Start.Ritz_Seen}{not Middle.Ritz_Got1} -> Loss1.Miss
= Game2_Lose
	{Loss1.Hold}{Middle.Ritz_Got2} -> Loss2.Hold
	{Loss1.Hold}{not Middle.Ritz_Got2} -> Loss2.Down
	{Loss1.Floor}{Middle.Ritz_Got2} -> Loss2.Up
	{Loss1.Floor}{not Middle.Ritz_Got2} -> Loss2.Floor
	{Loss1.Miss}{not Start.Ritz_Seen} -> Loss2.Miss
        //{Loss1.Miss}{Middle.Ritz_Got2} -> {Loss2.
	    //{Loss1.Miss}{Start.Ritz_Seen}{not Middle.Ritz_Got2} -> {Loss2.
= Game3_Lose
	{Loss2.Floor}{Middle.Ritz_Got3} -> Loss3.FloorUp
	{Loss2.Floor}{not Middle.Ritz_Got3} -> Loss3.Floor
	{Loss2.Down}{Middle.Ritz_Got3} -> Loss3.DownUp
	{Loss2.Down}{not Middle.Ritz_Got3} -> Loss3.Down
	{Loss2.Up}{Middle.Ritz_Got3} -> Loss3.Up
	{Loss2.Up}{not Middle.Ritz_Got3} -> Loss3.UpDown
	{Loss2.Hold}{Middle.Ritz_Got3} -> Loss3.Hold
	{Loss2.Hold}{not Middle.Ritz_Got3} -> Loss3.HoldDown
	{Loss2.Miss}{not Start.Ritz_Seen} -> Loss3.Miss
	   //{Loss2.Miss}{Middle.Ritz_Got3} -> {Loss3.
	   //{Loss2.Miss}{Start.Ritz_Seen}{not Middle.Ritz_Got3} -> {Loss3.


====== Loss1 ======
= Hold
	Meanwhile, I looked at the cracker.
	YOU LOSE! 
	You had a cracker but you did not munch it.
	    -> Inter_BeginLoop.Choices1
	
= Floor
	YOU LOSE! 
	You did not even hold that lovely cracker that you saw between your trotters, let alone munch it.
	    -> Inter_BeginLoop.Choices1
	
= Miss
	How very lazy, not even spotting the cracker that was there for the munchings. 
	With behaviour like this, you'll never be the plumpest hog in the trough.
	    -> Inter_BeginLoop.Choices1


TODO: Write the Game 2 Missing Endings
====== Loss2 ======
= Hold
    Meanwhile, I looked at the cracker.
    Right, I just want to check... you know you need to eat the cracker, right? Like, actually eat it. Not just hold it.
        -> Inter_BeginLoop.Choices1

= Down
    Right, you actually did worse this time. You went from holding a cracker (but not eating it) to struggling with the very concept of holding a cracker.
        -> Inter_BeginLoop.Choices1

= Up
    Meanwhile, I looked at the cracker.
    SO CLOSE! You had a cracker this time, but you did not munch it.
        -> Inter_BeginLoop.Choices1

= Floor
    YOU LOSE! You did not even hold that lovely cracker that you saw between your trotters, let alone munch it.
        -> Inter_BeginLoop.Choices1
 
= Miss
    That is twice in a row that you have not seen the cracker lying on the floor, and frankly that is unacceptapig.
        -> Inter_BeginLoop.Choices1

TODO: Write the Game 3 Missing Endings
====== Loss3 ======
= FloorUp
    WE'RE NEARLY THERE. YOU HELD THE CRACKER. IT WAS THERE IN YOUR TROTTER. I BELIEVE IN YOU.
        -> Inter_BeginLoop.Choices1

= Floor
    I don't want you to feel bad, but by this point in the game you could be seeing one of twenty-one different endings.
    Do you know where this one ranks?
    Twentieth. Twentieth worst.
    One more time: you need. To pick up. The cracker.
        -> Inter_BeginLoop.Choices1

= DownUp
    Well, we're back on track, we've managed to hold the cracker again. Good for you. Now eat it please.
        -> Inter_BeginLoop.Choices1

= Down
    You had a strong start, followed by a persistent decline. You're New Labour.
    FROM THE TOP!
        -> Inter_BeginLoop.Choices1

= Up
    Meanwhile, I looked at the cracker.
    Okay, you're... getting there. Sort of. After an inauspicious start, you've now managed the very difficult task of holding a savoury snack twice. I think that, if you try really hard, you can get it from the trotter to the mouth. I believe in you.
        -> Inter_BeginLoop.Choices1
  
= UpDown
    Meanwhile, I looked at the cracker.
    You were doing so well! After an initial failure, you managed to hold a cracker... and now, you've gone back to not holding a cracker. 
    Shall we try again?
        -> Inter_BeginLoop.Choices1

= Hold
    Meanwhile, I looked at the cracker.
    I... I don't know how to help you. You've literally had a cracker in your trotter three times. THREE TIMES. Why aren't you eating it? It's the whole point of the... Just...
    Let's try again.
        -> Inter_BeginLoop.Choices1

= HoldDown
    Meanwhile, I looked at the cracker.
    Well you're not even trying now, are you? Or are you so demoralised by failing to eat a cracker, twice, that now you can't even bring yourself to hold it?
        -> Inter_BeginLoop.Choices1

= Miss
    Look, here's the thing. I'm not even certain it's possible to see this ending. To see this, you need to have played three times, getting the worst possible result on every playthrough.
    And this is in a game where some of the bad choices disappear once you've picked them.
    I mean... in some ways this is an achievement.
    ...
    Yes. An achievement.
    Tell you what, this is painful. Let's say you won... in, like... your own special way.
    
    THE END
    -> END


TODO: Write the Game 4 Ending
====== Loss4 ======
-> DONE



====== Win ======
= Game
  YOU WIN! You munched a cracker!
  The End
  Many fanks for doing the playings, would you like to see what other ways this crunchy day could have gone?

	  + ["That would be lovely, thankyou Rupert."]
      OH GOODY!
      # RESTART
      -> END

	  + "I'm a bit busy actu[ally, Rupert."]-
      YIPPEE! AGAIN, AGAIN!
      # RESTART
      -> END


TODO: Go through the different Restart loops to check the Flow
====== Inter_BeginLoop ======
TODO: Create granular writeups for Choices1
= Choices1  
	+ Try again from the very beginning.
	  -> Intro.Again
	    
	* ["I'll try again but let's skip all that instructional nonsense and the picture of a piglet, please."]
    -> Tantrum.BigBoots01
	
	* {Tantrum.BigBoots01} ["Fine, but I swear to God Rupert, if you make me look at piglet pictures again I will lose my shit."]
	    ...dat's not very kindsome.
    -> Choices2
	    
	* {Tantrum.VeryRudeIndeed1} Look, Rupert, I'd really[ like to help you get that cracker. And whilst those piggit photos are really wonderful (too good for me, if anything), I worry that we might miss lunchtime.]-
	    OKEY DOKEY LET'S GET SMOKEY!
    -> Intro.Intro4
	
= Choices2
		+ [Sorry.]
	    -> Tantrum.VeryRudeIndeed1


====== Silo_Missing ======
It seems...
-> END


====== Silo_FuckUp ======
	{not Sorting.Game1} -> Error1
	{Sorting.Game1}{not Sorting.Game2} -> Error2
	{Sorting.Game2}{not Sorting.Game3} -> Error3

= Error1  
	WE ARE SORRY TO ANNOUNCE THAT THIS GREAT WESTERN RAIL SERVICE TO A COHERENT STORY HAS BEEN DIVERTED TO NONSENSE TOWN.
	If you see this screen, I've fucked up the coding.
	The End, motherfucker.
	BEEP-BEEP-BOOP, I AM AN ERROR CODE: Silo/FuckUp/1
	  -> END

= Error2
	WE ARE SORRY TO ANNOUNCE THAT THIS GREAT WESTERN RAIL SERVICE TO A COHERENT STORY HAS BEEN DIVERTED TO NONSENSE TOWN.
	If you see this screen, I've fucked up the coding.
	The End, motherfucker.
	BEEP-BEEP-BOOP, I AM AN ERROR CODE: Silo/FuckUp/2
	  -> END

= Error3
	WE ARE SORRY TO ANNOUNCE THAT THIS GREAT WESTERN RAIL SERVICE TO A COHERENT STORY HAS BEEN DIVERTED TO NONSENSE TOWN.
	If you see this screen, I've fucked up the coding.
	The End, motherfucker.
	BEEP-BEEP-BOOP, I AM AN ERROR CODE: Silo/FuckUp/3
	  -> END