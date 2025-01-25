/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. 

It is {advance_time()}
//{&It's Morning|It's Noon|It's Evening}


+ [Stroll down the beach.] -> beach2
+ {time == 2} [Its getting late. Head Home.] -> home
+ {time == 0} [Chase a crab.] -> crabchase
-> DONE

== beach2 ==
This is further down the beach.

It is {advance_time()}
* {time == 1} [Pick up some seashells.] -> shells
+ [Stroll back up the beach.] -> seashore
+ {time == 2} [Its getting late. Head Home.] -> home

== shells ==
You pick up the shells
-> beach2

== home ==
You go home. The walk back was {&scenic|lovely|tiring|uneventful}.
+ [Think about the beach.] ->beach3
+ {shells} [Examine the shells you collected.] -> examine_shells
-> DONE

== examine_shells ==
You enjoy looking at the {~ bluegreen|spotted pink|textured yellow|spiral-shaped} shell.
+ [Think about the beach.] ->beach3
+ {shells} [Examine the shells you colleced.] -> examine_shells
-> DONE

== crabchase ==
{&The crab eludes your efforts.|The crab is too fast.|You finally got a crab!}

It is {advance_time()}
+ [Back to the beach.] -> beach2
-> DONE

== beach3 ==
{&You wish you could go back to the beach right now.|You think about when you will go back to the beach.|You've seen the beach a many times now but it is still stunning every time.}
+[You decide to go back to the beach.] -> seashore

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    

    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }

    
        
    ~ return time
    
    
    
