INCLUDE Story Content/Part 0 | Introduction
INCLUDE Story Content/Part 0B | Harriet Introduction.ink
INCLUDE Story Content/Part 1 | Finding the Cracker
INCLUDE Story Content/Part 2 | Getting the Cracker
INCLUDE Story Content/Part 3 | Eating the Cracker
INCLUDE Results Sorters/Results | Game 1
INCLUDE Results Sorters/Results | Game 2
INCLUDE Results Sorters/Results | Game 3
INCLUDE Results Sorters/Results | Win
INCLUDE Game Data/Variables
INCLUDE Game Data/Functions
INCLUDE Game Data/Testbed
INCLUDE Structure & Framing/Holding Bays
INCLUDE Structure & Framing/Sorting
INCLUDE Reference/Cookbook
INCLUDE Reference/Lootbag
INCLUDE Reference/Reference
INCLUDE Reference/Tasklist
INCLUDE Structure & Framing/Developer Tools



# theme: dark
# title: The Ballad of the Hungry Piglet
# author: Rupert J Piglet

//Initiate the Variables?
    -> InitiateVariables ->

//Choose whether to turn on Debug Mode, then return here
    -> Select_Mode ->

    {DebugMode == true: -> DevMenu ->}
    
    -> Opening_Text
    
=== Opening_Text
    +   Let me tell you a tale... //NP
        #CLEAR
        -> Title

=== Title
    - (TitleIs)
        {TitleIs:
            - 1:    The Harrowing Deeds & Unspeakable Trials of Porcus Maximus,
            - 2:    All's Swill That Ends Swill,
            - 3:    The Ballad of the Hungry Piglet,
        } //NP
        
    +   {TitleIs == 1} [A Very Serious Recounting of a Very Consequential Endeavour] //NP
            #CLEAR
        ++  Ah, wait. //NP
        +++  Sorry. //NP
        ++++  I meant... //NP
            #CLEAR
            -> TitleIs
        
    +   {TitleIs == 2} [A Relatively Mundane Anecdote Pertaining to a Matter of Very Minor Significance] //NP
            #CLEAR  
        ++  ... //NP
        +++  What? //NP
        ++++  Fine. //NP
            #CLEAR
            -> TitleIs
        
    +   {TitleIs == 3} [A Most Conspicuous Nonsense About Very Little Indeed] //NP
            #CLEAR
            -> TitleEnd
            
    - (TitleEnd) -> Intro

=== Selections
// Is this bit redundant?

    -> InitiateVariables ->
    
    -> Select_Mode ->
    
    // Kick off the game proper
    -> Intro
