# Character: Lt. Croy
# Updated 04-08-2023 @ 1:12 AM PT
# theme: dark
# author: Disney.<br>All rights reserved.
# status: in-development

// ---------- VARIABLES
VAR DEBUG = false

// ---------- DEBUG
{ DEBUG:
	DEBUG MODE! # CLASS: debug
    * [START] -> start_croy
    * [End Day 1] -> end_day_1
    * [Start Day 2] -> start_day_2
    * [Rode Smugglers Run] -> rode_smugglers_run
    * [One Task Left] -> one_task_left
    * [Return to Halcyon] -> return_to_halcyon
    * [Engineering Shutdown Complete] -> engineering_shutdown_complete
    * [Console Shutdown Started] -> console_shutdown_started
- else:
    -> start_croy
}
-> DONE


// ============================================================================
// DAY 1, START
=== start_croy ===
//
Lt. Croy # CLASS: character-bar
Good day, passenger.
I am Lt. Harmon Croy of the First Order.
My investigations of Resistance activity have led me to this ship.
I am prepared to look deeper and find concrete evidence of Resistance activity onboard the Halcyon starcruiser.
You # CLASS: player-bar
    * [I'm pretty sure this is just a passenger vessel!]
        -> just_a_passenger
    * [What are your orders?]
        -> your_orders

=== just_a_passenger ===
<div class="player-answer">I'm pretty sure this is just a passenger vessel!</div>
Lt. Croy # CLASS: character-bar
Ah...perhaps to you it seems that way.
I suspect there is something lying below that façade.
If you refuse to help me, I will find the evidence I need another way.
You # CLASS: player-bar
    * [Roll the chance cubes and see what happens.]
        -> roll_chance_cubes

=== your_orders ===
<div class="player-answer">What are your orders?</div>
Lt. Croy # CLASS: character-bar
That's what I like to hear.
My intelligence reveals Resistance activity correlates to this ship's ports of call.
I suspect there is proof of this in the ship's restricted systems.
I am enlisting you - temporarily - to assist in obtaining this data.
You # CLASS: player-bar
    * [Where do I start?]
        -> where_to_start
	
=== where_to_start ===
<div class="player-answer">Where do I start?</div>
Lt. Croy # CLASS: character-bar
Locate a nearby ship console.
Any one will do.
They look like this:
You # CLASS: player-bar
    * [What do I do when I get there?]
        -> when_i_get_there
	
=== when_i_get_there ===
Lt. Croy # CLASS: character-bar
Tap your M-Band - I have granted you access to the ship's restricted systems.
TRANSMISSION COMPLETE # CLASS: transmission

=== roll_chance_cubes ===
<center>Roll the chance cubes and see what happens.</center>
I'd rather not.
I expect a ship of this class to play host to a better clientele than a scoundrel...it seems I may be mistaken.
Be careful with how you play your cards.
We shall see how your little game plays out.
TRANSMISSION ENDED # CLASS: transmission

<strong>(18:07)</strong>
In compliance with the First Order inquiry into the crew of the Halcyon starcruiser, I must interrupt your sailing for a brief investigation.
As a citizen and passenger, I expect full compliance.
// Emily 02
I was not impressed by that droid's cheek at muster and I intend to find out what it knows.
// Emily 01
Have you noticed any suspicious activity surrounding Miss Mok's droid, SK-620?
You # CLASS: player-bar
    * [No, nothing suspicious at all.]
        -> nothing_suspicious
    * That droid has Resistance data.
        -> droid_has_data
    *Information like that comes at a price.
        -> info_comes_at_price


=== nothing_suspicious ===
// Emily 01
<center>No, nothing suspicious at all.</center>
I see - well, I will advise you to be a bit more observant.
You would do well to carefully choose where your loyalties lie.
I believe I will need to inspect that droid and extract its information - with our without your help.
TRANSMISSION ENDED # CLASS: transmission

<strong>(22:39)</strong>
I am obtaining supplies from my First Order superiors to interrogate the droid, SK-620.
While my troopers track hikm down, I want to learn more about this ship and how it operates.
Can I rely on your assistance?
You # CLASS: player-bar
    * [What is your plan?]
        -> what_is_your_plan

=== droid_has_data ===
TODO: Need dialogue. # CLASS: todo

=== info_comes_at_price ===
TODO: Need dialogue. # CLASS: todo

=== what_is_your_plan ===
<center>What is your plan?</center>
If I find the crew of this ship are indeed Resistance operatives, we must have a way to secure it when - if - the time comes.
That means learning a little more about how it works.
Ship schematics would be very useful in this endeavour.
I will not ask again - will you be loyal to the First Order and assist with this mission?
You # CLASS: player-bar
  * [You'll have to look elsewhere for support.]
        -> look_elsewhere

=== look_elsewhere ===
<center>You'll have to look elsewhere for support.</center>
Ah, I see.
I must advise you that the evidence is mounting against this crew.
Be careful - do not get caught on the wrong side of this conflict.
TRANSMISSION ENDED # CLASS: transmission
-> DONE

=== droid_captured ===
// Haul 01 (Day 1 @ 22:08)
Lt. Croy # CLASS: character-bar
Now that I've captured that droid and will soon have extracted its memory, I will have the evidence I need to prove my investigation to Colonel Talis.
The next step is to find the tools to capture the ship and deliver it – and its crew – to the First Order.
These are the schematics of the Halcyon starcruiser.
Schematic: Halcyon received.
Lt. Croy # CLASS: character-bar
I'll likely need to find a forger to inspect these ship schematics on Batuu.
I will put this plan in motion under guise of the planet excursion.
TRANSMISSION COMPLETE # CLASS: transmission
-> DONE

=== end_day_1 ===
Lt. Croy # CLASS: character-bar
You've proven your loyalty to the First Order today.
I hope that quality continues on your planet excursion - we have work to do.
I've added orders to your itinerary and will follow up with details after you board your transport.
In the meantime, ensure you get a _____
I will need you at your peak performance.
TRANSMISSION COMPLETE # CLASS: transmission
-> DONE

=== morning_day_2 ===
Lt. Croy # CLASS: character-bar
Oh, and by the way - I see you have a reservation at Oga's Cantina.
There's someone there I'll need you to get in contact with.
Check your Datapad while on Batuu for further instructions.
TRANSMISSION COMPLETE # CLASS: transmission
-> DONE

=== rode_smugglers_run ===
You # CLASS: player-bar
    * [Hondo had us steal coaxium for the Resistance!]
        -> stole_coaxium
	
=== stole_coaxium ===
You # CLASS: player-bar
Hondo had us steal coaxium for the Resistance!
Lt. Croy # CLASS: character-bar
Coaxium? Resistance scoundrels!
Lt. Croy # CLASS: character-bar
My troopers are working to intercept this coaxium delivery.
We can celebrate the fruits of our labour in the Atrium and showcase the might of the First Order.
-> outstanding_orders

=== outstanding_orders ===
Lt. Croy # CLASS: character-bar
You have the following outstanding orders to complete.
Choose wisely - you must complete one before you begin another.
You # CLASS: player-bar
    * [Find a forger at Oga's Cantina.]
        -> visit_oga
    * [Find the Resistance Camp on Batuu.]
        -> ride_rise_of_the_resistance
    * [Protect the First Order shuttle.]
        -> hack_shuttle
	
=== visit_oga ===
Lt. Croy # CLASS: character-bar
_____
You # CLASS: player-bar
   * [Where is Oga's Cantina?]
       -> visit_oga_where
   * [I'm at the Cantina for my reservation.]
       -> visit_oga_now
   * [I already went to the Cantina!]
       -> visit_oga_already
       
=== visit_oga_where ===
You # CLASS: player-bar
Where is Oga's Cantina?
Lt. Croy # CLASS: character-bar
Oga's Cantina can be found between Docking Bay 9 and the Spaceport along Merchant's Row.
You # CLASS: player-bar
   * [I'm at the Cantina for my reservation.]
       -> visit_oga_now
   * [I already went to the Cantina!]
       -> visit_oga_already

=== visit_oga_now ===
You # CLASS: player-bar
I'm at the Cantina for my reservation.
Lt. Croy # CLASS: character-bar
Very well.
When your bartender arrives, tell them "Oga has information for me" and show them this credential.
Lt. Croy # CLASS: character-bar
If they follow Oga's orders, they should hand you something to get in contact with a local forger.
You # CLASS: player-bar
They gave me something - how do I use it?
Lt. Croy # CLASS: character-bar
Hm...this forger must have encoded their contact information.
Try using your SCAN tool to see if there's any hidden information on it.
I was correct.  You now have the contact information for the forger.
Tell them what you know about the schematics and the starcruiser.
You # CLASS: player-bar
    * [Debug: You do the forger's request]
      -> forger_complete

=== forger_complete ===
Lt. Croy # CLASS: character-bar
What is your report?
You # CLASS: player-bar
    * [The forger is sending some datatapes to override the ship.]
        -> ship_shutdown_invite

=== ship_shutdown_invite ===
You # CLASS: player-bar
The forger is sending some datatapes to override the ship.
Lt. Croy # CLASS: character-bar
I will await their arrival onboard.
An override could be incredibly dangerous - but a risk we all must be willing to take.
For the Order.
Well done.
While you are finishing on Batuu I will establish protocols for the ship shutdown.
Lt. Croy # CLASS: character-bar
Meet me in the Engineering ROom later tonight to utilize these datatapes.
We will override the ship systems and configure them to shut down so we can deliver the Halcyon starcruiser and its crew to the First Order.
I've added an invitation to your itineary.
Do not be late.
-> bridge_invite 

=== bridge_invite ===
Lt. Croy # CLASS: character-bar
Despite the challenges we've faced on Batuu.  I believe we have found enough evidence to bring this ship to the First Order.
We must report our findings to Colonel Talis.
Meet me on the Bridge tonight - you will be there to show the First Order the progress we've made together.
Do not be late.
TRANSMISSION COMPLETE # CLASS: transmission
-> DONE

=== visit_oga_already ===
TODO: Need dialogue. # CLASS: todo

=== ride_rise_of_the_resistance ===
Lt. Croy # CLASS: character-bar
_____
Regardless of the truth of these rumors, I need you to explore the outskirts of the village to find their position.
These Resistance scum can be dangerous so remain vigilant.
Make your wat to these coordinates I have marked on your map.
Confirm your location by tapping the map marker when you have arrived.
I will then send further instructions.
I see you've located the Resistance encampment.
Be alert.  You are amongst the enemy!
Stay inconspicuous - I'll set up your Datapad as a tracing beacon so the First Order can intercept any information or transport coordinates should your mission go awry.
Find this nearby turret.
What are you able to observe?
You # CLASS: player-bar
    * [It looks like they're actively recruiting!]
        -> rotr_actively_recruiting

=== rotr_actively_recruiting ===
You # CLASS: player-bar
It looks like they're actively recruiting!
Lt. Croy # CLASS: character-bar
Excellent, the rumors are confirmed.
Are you ready to infiltrate the Resistance base?
You # CLASS: player-bar
    * [Yes, I'm ready.]
        -> rotr_ready_to_ride

=== rotr_ready_to_ride ===
You # CLASS: player-bar
Yes, I'm ready.
Lt. Croy # CLASS: character-bar
Make your way there and pretend you are looking to enlist.
They'll ask you to tap your M-band for quick entry.
Let me know if you encounter any issues - otherwise, I will get back in touch once you've tapped at the entry.
TRANSMISSION COMPLETE # CLASS: transmission
You # CLASS: player-bar
    * [Debug: Tap M-band at Rise of the Resistance entrance.]
        -> rotr_ride_complete

=== rotr_ride_complete ===
Lt. Croy # CLASS: character-bar
My reports indicate you've infiltrated the Resistance encampment.
Well done.
Your M-Band's tracing beacon will keep the First Order informed of the goings on around you.
Let me know if you encounter any obstacles.
You # CLASS: player-bar
    * [The Resistance escaped!]
        -> rotr_complete
    * [We ran into some issues and were asked to leave.]
        -> rotr_problems

=== rotr_complete ===
Lt. Croy # CLASS: character-bar
I'm receiving urgent reports of a Star Destroyer damaged in Batuu orbit.
...the reports indicate this Star Destroyer - the Finalizer - was carring the Supreme Leader and General Hux.
This will not reflect well on me.  On any of us.
I need a full report.  What happened?
You # CLASS: player-bar
    * [The Resistance destroyed a Star Destroyer!]
        -> rotr_complete_continued
	
=== rotr_complete_continued ===
You # CLASS: player-bar
The Resistance destroyed a Star Destroyer!
Lt. Croy # CLASS: character-bar
This is a huge blow against the First Order.
Colonel Talis - and the Supreme Leader - will not be happy.
It is now more important than ever that we hold this ship and the Resistance scum onboard accountable for their actions.
-> DONE

=== one_task_left ===
Lt. Croy # CLASS: character-bar
Ah - just the one task remaining.
Find a forger at Oga's Cantina.
Lt. Croy # CLASS: character-bar
Yes, the forger to inspect the ship schematic.
The First Order has contacts throughout the galaxy; and you will need to find one at Black Spire Outpost.
The local watering hole is usually the best place to find a forger or slicer.
Alert me when you're at Oga's Cantina and I will give my next instructions.
-> visit_oga

=== rotr_problems ===
TODO: Need dialogue. # CLASS: todo

=== hack_shuttle ===
Lt. Croy # CLASS: character-bar
_____ shuttle is docked at Docking Bay 9.
That shuttle has brand new First Order hyperspace tracking technology onboard.
I need you to secure that equipment to make sure it doesn't fall into the wrong hands.
You # CLASS: player-bar
    * [How did you let this happen?]
        -> shuttle_let_this_happen
    * [What are your orders, Lieutenant?]
        -> shuttle_your_orders
    * [I'm not interested.]
        -> shuttle_not_interested
	
=== shuttle_let_this_happen ===
TODO: Need dialogue. # CLASS: todo

=== shuttle_your_orders ===
TODO: Need dialogue. # CLASS: todo

=== shuttle_not_interested ===
TODO: Need dialogue. # CLASS: todo

=== return_to_halcyon ===
Lt. Croy # CLASS: character-bar
With the events that have transpired, I'm sure Colonel Talis will want a full report... and I am not about to let any Resistance scum eavesdrop and set us back any further.
I need to establish a secure comms channel to ensure we're not overheard.
Make your way to the Cargo Hold on deck 4 - there should be a transmitter in the crate we took on yesterday that includes an encrypted frequency I can use.
You # CLASS: player-bar
    * [Debug: Scan the crate in the cargo hold]
        -> cargo_hold_crate_scanned
	
=== cargo_hold_crate_scanned ===
Lt. Croy # CLASS: character-bar
I assume you've found the transmitter I'm looking for.
What was that frequency on the manifest?
You # CLASS: player-bar
    * [172459914]
        -> correct_freq
    * [_________]
        -> incorrect_freq
    * [_________]
        -> incorrect_freq
	
=== incorrect_freq ===
TODO: Need dialogue. # CLASS: todo

=== correct_freq ===
You # CLASS: player-bar
172459914
Lt. Croy # CLASS: character-bar
Yes, this will work.
This channel will be highly secure - it's unlikely anyone will be able to impact our communications.
I will get in touch with command and make contact with Colonel Talis.
Your loyalty to the First Order is appreciated.
TRANSMISSION COMPLETE # CLASS: transmission
-> DONE

=== engineering_shutdown_complete ===
Lt. Croy # CLASS: character-bar
Despite the crew's best attempts at undermining my investigation, we have what we need and are poised to capture this ship for the First Order.
Your quick work in the Engineering room has configured the ship systems for shut down - now, I need you to initialize the processes.
I have configured your M-Band to begin the program.
Find your way to the nearest ship console and tap your M-Band to begin the execution of the processes that will bring this siph - and its crew - to their fate.
TRANSMISSION COMPLETE # CLASS: transmission
    * [Debug: Use M-Band on Ship Console and start shut down]
        -> console_shutdown_started

=== console_shutdown_started ===
Lt. Croy # CLASS: character-bar
Well done.
Meet me in the Atrium - we will be ready when those processes finish - and the ship will be ours.
TRANSMISSION COMPLETE # CLASS: transmission
-> DONE

=== unknown_02 ===
// Saw online somewhere
// (Day 2)
Let me know which of the following directives you would like to complete first.
Choose wisely – you must complete each one before you begin another.
You # CLASS: player-bar
  * [Find a forger at Oga's Cantina.]
        -> unknown_02
-> DONE
-> END
