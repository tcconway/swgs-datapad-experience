# Character: Raithe Kole
# Updated 05-02-2022 @ 3:17 PM ET
# theme: dark
# author: Disney.<br>All rights reserved.
# status: in-development

// ---------- VARIABLES
VAR CONSOLE_UNLOCKED = false
VAR ENG_ROOM_UNLOCKED = false
VAR CARGO_HOLD_UNLOCKED = false
VAR DEBUG = false

// ---------- DEBUG
{DEBUG:
	DEBUG MODE! # CLASS: debug
    * [START] -> start_raithe_kole
    * [You're in] -> youre_in
	* [Hack Console...]	-> hack_console
	* [Gaya pleased...] -> gaya_is_pleased
	* [What triggers this...] -> chat_in_person
- else:
    -> start_raithe_kole
}
-> DONE

// ---------- START
-> start_raithe_kole

=== start_raithe_kole ===
You # CLASS: player-bar
    * [<span class="non-datapad-action">(Use your M-Band on the Engineering Room door.)</span>]
        // AR08 (14:41)
        Raithe Koke # CLASS: character-bar
        So...a little convor tells me you're trying to get into the Engineering Room?
        The Engineering Room is for crew only...
    * [<span class="non-datapad-action">(Tap 'Restricted Systems' on a Ship Console.)</span>]
        <div class="player-action"> You try to access 'Restricted Systems' on  a Ship Console.</div>
        Raithe Koke # CLASS: character-bar
        // AR08 (14:41), Dianne55 (16:38)
        Ooh, a curious convor, are we?
        Exploring Restricted Systems already...
        Those are for Halcyon crew only.

- However, I respect your sense of curiosity and disregard for the rules.
...I'm not Halcyon crew either.
You # CLASS: player-bar
    * Who are you? # CLASS: player-answer
         -> who_are_you
    * I'll help you if you help me... # CLASS: player-answer
        -> ill_help_you
    * Do you know how to get in? # CLASS: player-answer
        -> how_to_get_in

=== who_are_you ===
// Amy01
Raithe Koke # CLASS: character-bar
I'm someone who is always on the lookout for potential recruits for my crew.
It's a lucrative busness, though not always...above board, if you catch my drift.
You # CLASS: player-bar
    * [Do you know how to get into Restricted Systems?]
        <div class="player-answer">Do you know how to get in?</div>
        -> how_to_get_in

=== how_to_get_in ===
// Dianne56 (16:38), Amy01 (15:29)
Raithe Koke # CLASS: character-bar
It just so happens I do know how to get into some restricted areas of the ship....
However, I have many hands of sabacc going at the same time – so I'm needed elsewhere...
You, however, are clearly ready to be dealt in – so maybe you can fly under the radar and get us access to the Engineering Room and Restricted Systems.
// Dianne57
You never know how they'll come in handy.
You # CLASS: player-bar
    * [Why do you need access?]
        -> why_need_access
    * [I'll help you if you help me...]
        -> ill_help_you

=== why_need_access ===
// Amy01
<div class="player-answer">Why do you need access?</div>
Raithe Koke # CLASS: character-bar
I have my reasons as I'm sure you have yours.
But I've got my eye on you – maybe you'll prove useful for...future endeavours.
// Ben25
You # CLASS: player-bar
    * [I'll help you if you help me...]
        -> ill_help_you

=== ill_help_you ===
// Dianne57, Ben25 (15:29)
Raithe Koke # CLASS: character-bar
Ah, I like you. That's the spirit. Let's get to it, shall we?
{ ENG_ROOM_UNLOCKED == true:
    -> have_engineering_access
}
You'll need to find a ship console. I've noticed a few of them around the starcruiser.
They look like this:
<img src="./images/ship-console.png" />
Find one and let me know when you're near.
You # CLASS: player-bar
    * [Where can I find one?]
        -> where_can_find_console
    * [I'm at a ship console.]
        -> at_ship_console

=== have_engineering_access ===
Raithe Koke # CLASS: character-bar
I see you have engineering access, I wonder if you would help me with something?
	-> engineering_task

=== where_can_find_console ===
// Amy01
<div class="player-answer">Where can I find one?</div>
Raithe Koke # CLASS: character-bar
Depends on where you are.
In scoping out the ship, I've found a few in the Atrium on Deck 6, one on the concourse of Deck 4, and one at each of the Cabin hallways near the turbolifts.
Head to whatever's nearest to you!
You # CLASS: player-bar
    * [I'm at a ship console.]
        -> at_ship_console

=== at_ship_console ===
// Ben26 (15:31), Amy01
<div class="player-answer">I'm at a ship console.</div>
Raithe Koke # CLASS: character-bar
Great. You'll want to stand near the ship console for this – but not too close.
I'll enable your Hack tool – connect the inputs and outputs it shows you on your Datapad to slice the ship console.
<div class="button"><a href="" class="button-text">VIEW TRANSCRIPT</a></div>

{ ENG_ROOM_UNLOCKED == true:
    -> have_engineering_access
}
You # CLASS: player-bar
    * [<span class="non-datapad-action">(I have the credential code.)</span>]
        -> hack_console
    * [<span class="non-datapad-action">(I've already put the credential codes in the console.)</span>]
        -> engineering_task

=== hack_console ===
// Ben 28 (15:32)
Raithe Koke # CLASS: character-bar
Ah, you got the credential code.
Now press the "RESTRICTED SYSTEMS" button or tap your M-Band at the ship console.
Enter the code when prompted and let's see if it works.
<img src="./images/ship-console.png" />
You # CLASS: player-bar
    * [<span class="non-datapad-action">(Enter the credential codes in the console.)</span>]
        -> youre_in

=== youre_in ===
// Ben 28 (15:34)
~ CONSOLE_UNLOCKED = true
Raithe Koke # CLASS: character-bar
Alright, you're in.
You should have access to that restricted Engineering room now.
Way to make a first impression.
Actually...I need your help with something.
// Ben 29
Head to the Engineering room and act like you belong there.
-> engineering_task

=== engineering_task ===
{~ ->engineering_task_1 | ->engineering_task_2}

=== engineering_task_1 ===
Raithe Koke # CLASS: character-bar
I need to make sure Gaya has a way off of this ship if she needs a sudden geteway.
I want to prepare an escape pod and make sure it's up to her standards – just in case.
Find the Mechanical Systems station.
On that panel, find a way to prime the Escape Pod thrusters so we're sure it's ready to go.
// Ben30
    -> engineering_task_ending

=== engineering_task_2 ===
// Amy01
Raithe Koke # CLASS: character-bar
Here's the deal – Gaya's communications must stay private.
We need a secure comms channel set up.
I need you to find the Systems Patch Bay.
On that system panel, find a way to calibrate the primary sensor array.
    -> engineering_task_ending

=== engineering_task_ending ===
// Amy01, Ben30
Raithe Koke # CLASS: character-bar
Once that's done, play it cool and don't draw too much attention to yourself.
I trust you've got it covered.
TRANSMISSION ENDED # CLASS: transmission
    * [<span class="non-datapad-action">(Engineering task completed.)</span>]
        -> engineering_task_done

=== engineering_task_done ===
// Amy01 (15:36), Ben30 (15:36)
Raithe Koke # CLASS: character-bar
I see you're following through. Nicely done.
Next time you see me, mention that you've seen "Gaya's legendary performance on Ryloth" – that way I'll know it's you.
// Ben31 (17:41)
We'll keep in touch.
    * [<span class="non-datapad-action">(Raithe and I had a chat in-person.)</span>]
        -> chat_in_person
    * [<span class="non-datapad-action">(I haven't seen Raithe.)</span>]
        The next day...
        -> we_have_plans

=== chat_in_person ===
TODO Figure out why this next part was triggered...or -> we_have_plans
// Ben31 (17:41)
Raithe Koke # CLASS: character-bar
Per usual, Gaya delivered – coordinates to a First Order coaxium transport. This data seals the deal Gaya made with the Captain.
    * [You're helping the Captain?]
    // Ben31
    <div class="player-answer">You're helping the Captain?</div>
    For Gaya, it's not about the Captain or the Resistance. Gaya's home planet of Ryloth is at risk...the First Order is a threat to her people, and if we help the Resistance, they've agreed to help protect Ryloth if the First Order threatens it again.
    // Ben32
        * * [What do you need me to do?]
            // Ben32
            <div class="player-answer">What do you need me to do?</div>
            Raithe Koke # CLASS: character-bar
            Gaya slipped me the coordinates for the coaxium transport on Corellia, right under the Lieutenant's nose.
            I think I can trust you...are you interested in joining our crew?
                 * * * [Yeah, I'll join your crew!]
                    <div class="player-answer">Yeah, I'll join your crew!</div>
                    I like your style. You're in.
                    // Ben33
                    Keep an eye out. Gaya's calling – I'll be in touch.

-    * [<span class="non-datapad-action">(Later that evening...)</span>]

    -> we_have_plans


=== we_have_plans ===
// Ben 33 (23:12)
Raithe Koke # CLASS: character-bar
Well well well, we have some plans, don't we?
I've got some things I need from my new crew while you're at Batuu – and that means you.
I took the liberty of adding reminders to your itinerary – but I'll follow up with more details after you board your transport.
It's going to be an eventful day – and we'll be right in the action.
    * [<span class="non-datapad-action">(The next day...)</span>]
        -> excursion_raithe
    
-> DONE

// ========== DAY 2

=== excursion_raithe ===
// Ben34 (08:24)
Raithe Koke # CLASS: character-bar
I won't be joining you on Batuu – one bad deal with Oga is enough to make you unwelcomed for a while.
...I wouldn't recommend it.
However, I have more than enough confidence in you to do your job while I'm readying the ship for your delivery.
You're taking on a lot of responsibility today.
// Ben35
Gaya's impressed...I'm waiting to see how you do.
Where would you like to start?
    * [Deliver coaxium coordinates to Hondo.]
        ->deliver_coaxium_coordinates

=== deliver_coaxium_coordinates ===
<div class="player-answer">Deliver coaxium coordinates to Hondo.</div>
Raithe Koke # CLASS: character-bar
Alright; you're gonna head over to the spaceport. Look for the Millenium Falcon docked out front.
// Ben36
<img src="./images/millenium-falcon.png" />

Ohnaka Transport Solutions is recruiting, and you're going to join.
Hondo usually has better ships, but Captain Keevan insists we use this hunk of junk.
Gaya's worked with Hondo on some uh..."perfectly legitimate" ships in the past, he'll get us what we need...and you'll be fine.
// Ben37
When you arrive, let the crew at Ohnaka Transport Solutions know you have coordinates for Hondo.
<img src="./images/ohnaka-transport-solutions.png" />
They'll ask you to tap your M-Band – that'll transfer the coaxium transport coordinates to him.
// Ben38
He'll let you know what to do when you get ready to board the ship...and will get you to Corellia and back in one piece...mostly.
    * [<span class="non-datapad-action">(Tap M-Band at Ohnaka Transport Solutions.)</span>]
    -> tap_ohnaka

=== tap_ohnaka ===
<div class="player-action">You tap your M-Band at Ohnaka Transport Solutions</div>
How'd you do? Were you able to get the coaxium?
    * [We got the coaxium!]
        -> we_got_coaxium

=== we_got_coaxium ===
<div class="player-answer">We got the coaxium!</div>
        Raithe Koke # CLASS: character-bar
That's impressive...and I don't impress easily.
I'll make sure the Bridge is clear for Hondo's arrival with the cargo.
// Ben39
Meet me there to make sure it arrives safely!
<div class="button"><a href="" class="button-text">SHOW EVENTS/a></div>

One thing for you to do – and this one's for my crew and my crew only.
Alright. To prepare for our heist later today, we'll need a look-alike Hayananeya stone.
That way, when we swipe the one onboard the ship, no one will realize it's gone.
// Ben40
Here are the schematics for the Hayananeya.
<div class="action">Hayananeya Schematics received.</div>
Zabaka's a friend who can help us make a convincing fake of the Hayananeya at her toy shop – but she'll need some help and that's where you come in.
        * [What do you need me to do?]
        -> head_to_zabaka
    
=== head_to_zabaka ===
<div class="player-answer">What do you need me to do?</div>
Raithe Koke # CLASS: character-bar
Head over to her shop in the marketplace. It's called Toydarian Toymaker.
// Ben41
Let me know when you're there.
    * [I'm there.]
    -> at_zabaka

=== at_zabaka ===
Raithe Koke # CLASS: character-bar
Alright – now head over to her stall. You'll probably be able to see her in the back office – she'll be working on some of her toys.
Don't forget – Oga's always watching.
We need to get these schematics to Zabaka without Oga knowing – otherwise she'll take a cut of the deal.
// Ben42
So we're going to slice into Zabaka's databanks with your datapad's Hack tool. This might be a little messy.
<div class="action">Data Received.</div>
<div class="button"><a href="" class="button-text">SHOW MAP</a></div>
    * [<span class="non-datapad-action">(Hack Zabaka's databanks.)</span>]
    -> hack_zabakas_databanks

=== hack_zabakas_databanks ===
Raithe Koke # CLASS: character-bar
Well...you certainly did something.
I don't know if i'd call it slicing...
I'm sure Zabaka will reach out given the unexpected disturbance.
// Ben 43
<div class="action">Received Data</div>
<div class="button"><a href="" class="button-text">SHOW COMMS</a></div>
Excellent. We'll let Zabaka do what she does best.
She can be a little cranky if she gets rushed.
We'll meet back up onboard the ship later for the actual heist – here's a reminder.
<a href="" class="button-text">SHOW EVENTS</a> # CLASS: button

// Ben44, Susan01 (13:52)
Nicely done – and very efficient.
Enjoy your time on Batuu – I would have joined you, but...circumstances dictate otherwise.
If you see Oga...don't mention me.
TRANSMISSION ENDED # CLASS: transmission
    * [<span class="non-datapad-action">(Gaya is pleased/Don't know where this is triggered.)</span>]
        -> gaya_is_pleased
    * [<span class="non-datapad-action">(After the heist live moment...)</span>]

        -> after_heist

=== gaya_is_pleased ===
// Susan01 (06:40)
Raithe Koke # CLASS: character-bar
Bravo! I knew you were a sure bet.
Gaya, is of course, very pleased – though we didn't get the full coaxium payment she'd been promised, the Hayananeya is back where it belongs.
And, let's be honest, that was the whole reason we came on this little starcruiser anyway.
If you ever find yourself in the Outer Rim again, drop me a line – I could use someone like you on a future job.
TRANSMISSION ENDED # CLASS: transmission
-> END

=== after_heist ===
//Jess04 (19:45)
Raithe Koke # CLASS: character-bar
TODO need dialogue
...Hondo will get it back up to the ship.
// Ben45 (19:44)
Phew! That was close. That's not usually how I like to be center stage. But I knew I could count on you to keep Croy distracted. You're one of us now.
But we still have to keep this coaxium under wraps.
Be careful with that violet suitcase – coaxium is more unstable than a hungry rancor.
-> END

