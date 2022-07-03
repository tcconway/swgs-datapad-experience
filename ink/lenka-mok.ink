# Character: Lenka Mok
# Updated 05-02-2022 @ 3:17 PM ET
# theme: dark
# author: Disney.<br>All rights reserved.
# status: in-development

// ---------- VARIABLES
VAR DEBUG = true
VAR HAS_BOARDED = false
VAR ENG_ROOM_UNLOCKED = true

// ---------- DEBUG
{ DEBUG:
	DEBUG MODE! # CLASS: debug
    * [START] -> start_lenka
    * [Unknown 1] -> unknown_01
    * [Found Registry] -> found_registry
    * [Things escalating] -> things_escalating
- else:
    -> start_lenka
}
-> DONE

// ---------- START

=== start_lenka ===
{ HAS_BOARDED:
    TODO
- else:
    * [<span class="non-datapad-action">(Board the Halcyon.)</span>]
    -> welcome_aboard
}



// ============================================================================
// DAY 1

=== welcome_aboard ===
// Haul 02 (Day 1 @ 13:23), Dianne 33 (Day 1 @ 13:49)
Lenka Mok # CLASS: character-bar
Welcome aboard the Halcyon starcruiser!
I'm Lenka Mok, your cruise director.
I'm so excited to have you join us on our special 275th anniversary voyage to Batuu.
As our ship has recently been refurbished, I would encourage you to explore this beautiful starcruiser and get to know your way around!
You # CLASS: player-bar
    * [What should I check out first?]
        <div class="player-answer">What should I check out first?</div>
        -> favorite_place
    * [Do you have a favorite place on the ship?]
        <div class="player-answer">Do you have a favorite place on the ship?</div>
        -> favorite_place

=== favorite_place ===
// Haul 02 (Day 1 @ 13:23)
Lenka Mok # CLASS: character-bar
One of my personal favorite locations is the climate simulator – which changes every voyage based on our destination!
You'll also find plant life from our various past destinations.
One of the plants is from our home world of Chandrila.
Did you know that Chandrila was once the capital of the New Republic after the Rebel Alliance defeated the Empire?
    * [I admire the goals of freedom and hope of the old Rebel Alliance.]
        <div class="player-answer">I admire the goals of freedom and hope of the old Rebel Alliance.</div>
        Lenka Mok # CLASS: character-bar
        // Dianne 35
        You know, the message of peace and hope is imbued in the Halcyon as well.
        I hope to see more of you around the starcruiser!
    * [I appreciate the structure and order of the Galactic Empire.]
        <div class="player-answer">I appreciate the structure and order of the Galactic Empire.</div>
        Lenka Mok # CLASS: character-bar
        I see! Well, we celebrate and welcome all passengers equally onboard this ship.
    * [I don't take sides. My allegiances can be swayed...for a price.]
        <div class="player-answer">I don't take sides. My allegiances can be swayed...for a price.</div>
        Lenka Mok # CLASS: character-bar
        // Ben 46
        Then you may enjoy our holo-sabacc table in the Sublight lounge – or our sabacc tournament tomorrow! Just know cheating is not tolerated onboard the starcruiser.
    * [I practice patience in such matters. The Force guides me.]
        <div class="player-answer">I practice patience in such matters. The Force guides me.</div>
        Lenka Mok # CLASS: character-bar
        <div class="todo">TODO: Need dialogue.</div>
    * [I'm not sure yet...]
        <div class="player-answer">I'm not sure yet..</div>
        Lenka Mok # CLASS: character-bar
        <div class="todo">TODO: Need dialogue.</div>

- Please continue exploring our beautiful ship - and grab a bite to eat at the Crown of Corellia dining room!
And don't forget to head to Muster at 4:00 PM. I'll see you there!
TRANSMISSION ENDED # CLASS: transmission
    * [<span class="non-datapad-action">(Scan your M-Band on SK-620.)</span>]
        -> scan_mband_on_sk
    * [<span class="non-datapad-action">(Unknown trigger.)</span>]
        -> unknown_02

=== unknown_02 ===
// Ben 47 (Day 1 @ 17:31)
Lenka Mok # CLASS: character-bar
I know we've just gotten to know each other but...
I need your help.
I wouldn't normally ask a passenger to get involved, but Lt. Croy's presence on this ship puts us all at risk.
I think he's planning something.
Do me a favor – Use your Datapad to Tune into the ship's comms systems and see if he's communicating a plan to his troopers.
You might get a stronger signal near the Bridge.
<div class="action">Received Data</div>
<div class="button"><a href="" class="button-text">SHOW TRANSMISSION</a></div>
    * [<span class="non-datapad-action">(Tune into ship's comms.)</span>]
        -> tune_ships_comms

=== tune_ships_comms
// Ben 49
Lenka Mok # CLASS: character-bar
Well, did you learn anything?
You # CLASS: player-bar
    * [Lt. Croy is trying to get the schematics for the ship!]
        <div class="player-answer">Lt. Croy is trying to get the schematics for the ship!</div>
        -> trying_get_schematics

=== trying_get_schematics ===
// Ben 49
Lenka Mok # CLASS: character-bar
Schematics...of the Halcyon?
I wonder what he wants with those...
We definitely don't want him to see more of the ship than we let him.
We've got to find a way to stop him.
But without knowing the details of his plan...we need to stay on top of this.
If he's looking for the schematics, so will we.
{ ENG_ROOM_UNLOCKED == true:
    -> have_engineering_access
}
<div class="todo">TODO: Need dialogue.</div>
-> DONE

=== have_engineering_access ===
// Ben 50 (17:53)
Lenka Mok # CLASS: character-bar
It looks like you already have access to the Engineering room!
Head down there and tap at the door to get in.
Find the builder's plate on the wall of the access corridor.
It should have a starship registry for the ship.
You # CLASS: player-bar
    * [What's a starship registry?]
        <div class="player-answer">What's a starship registry?</div>
        -> starship_registry

=== starship_registry ===
// Ben 51 (17:56)
Lenka Mok # CLASS: character-bar
Every ship gets a unique registry number.
The builders plate will have the one for our starcruiser.
You # CLASS: player-bar
    * [I found the registry!]
        <div class="player-answer">I found the registry!</div>
        -> found_registry

=== found_registry ===
// Ben 51-52  (17:56)
Lenka Mok # CLASS: character-bar
Remember that sequence of symbols – then continue into the Engineering room and find the engineering computer. It looks like this:
<img src="./images/location-img-engcomp(1D6A).png" />
There's a section of the computer where you'll be able to enter that starship registry.
After you've entered the registry sequence, tap your M-Band to download the ship's schematic.
You # CLASS: player-bar
    * [I'm on it!]
        //Ben 53
        <div class="player-answer">I'm on it!</div>
- Lenka Mok # CLASS: character-bar
Great. I'll reach out when you have the schematics.
    * [<span class="non-datapad-action">(Tap M-Band on engineering computer.)</span>]
    -> have_schematics
    

=== have_schematics ===
// Ben 53  (17:58)
Lenka Mok # CLASS: character-bar
How'd it go?
You # CLASS: player-bar
    * [I have the starcruiser schematic!]
        <div class="player-answer">I have the starcruiser schematic!</div>
        Lenka Mok # CLASS: character-bar
        Nicely done!
        We'll hold onto the schematic for now – and we'll figure out what Croy's plan is.
        // Ben 54
        But at least now we have the same information he does.
        I'll be in touch when I have more details.
- * [<span class="non-datapad-action">(Later....)</span>]
    -> things_escalating

=== things_escalating ===
// Ben54 (Day 1 @ 20:49) , ? (Day 1 @ 20:57)
Lenka Mok # CLASS: character-bar
Things are...escalating onboard the ship – Sammie uncovered some troubling First Order technology...the Captain bringing Chewbacca onboard means this situation is if more serious than I imagined... and SK's been sharing Resistance data with passengers!
I...have to coordinate all of these plans so we arrive at Batuu safely.
// Dianne 40
And I'll need your help.
SK's capture means we're in a tough spot - but we will not give up.
It's important more now than ever that we figure out what Lt. Croy's plan is for this ship and crew.
I've found the schematics of the ship. I think it'll help.
<div class="action">Schematic: Halcyon received.</div>
You # CLASS: player-bar
    * [How do we deal with Lt. Croy?]
        <div class="player-answer">How do we deal with Lt. Croy?</div>
        -> deal_with_croy

==== deal_with_croy ====
Lenka Mok # CLASS: character-bar
We work together.
We'll undermine and uncover all of his plans.
(23:18) Thank you for sticking by SK. Sammie and me - you're a true friend of the Resistance.
Captain Keevan trusts us to make things right.
I'll need your help on your planet excursion - to rescue SK and catch up to Lt. Croy's plan.
I've added some reminders to your itinerary and I'll send details once you're on your way to Batuu.
Until then...get some rest! you'll need it. It's sure to be an adventure.
If you look, there are always stars int he galaxy to light our way.
TRANSMISSION ENDED # CLASS: transmission
    * [<span class="non-datapad-action">(I have a reservation to Oga's)</span>]
        -> have_reservation
    * [<span class="non-datapad-action">(I don't have a reservation to Oga's)</span>]
        -> no_reservation
 
=== no_reservation ===
Lenka Mok # CLASS: character-bar
<div class="todo">TODO: Need dialogue.</div>
-> have_reservation

=== have_reservation ===
// (23:29) 
Lenka Mok # CLASS: character-bar
Oh, by the way, I see you're headed to Oga's Cantina!
A wise choice - apart from being the best place in the Outer Rim for drinks, there's also some...unique clientele.
Oga can help us get in contact with a forger to hlep with those ship schematics.
- Keep an eye on your Datapad while on Batuu - I'll send more details then.
TRANSMISSION ENDED # CLASS: transmission
(09:03) I know this was meant to be a normal planet excursion - I usually take care of these things myself while at ports of call but I am under too much scrutiny from Croy.
I appreciate your willingness to complete our Resistance operations.
    -> DIANNE_45

==== DIANNE_45 ====
// (09:08)
Lenka Mok # CLASS: character-bar
We need to find a way to rescue SK and figure out why Lt. Croy needed those ship schematics yesterday.
Which would you be able to handle first?
Please choose carefully - you'll need to complete one before starting another.
    * Find a way to rescue SK.
    -> rescue_sk

==== rescue_sk ====
//(13:09)
Lenka Mok # CLASS: character-bar
That explains these new datatapes that just appeared on our cargo manifest.
These must be for the engineering room.
I'll regroup with Sammie and figure out how to use these datatapes to safeguard the ship against whatever Croy has planned.
I can't thank you enough for your dedication to helping this ship, it's crew...and the Resistance.

=== scan_mband_on_sk ===
// Dianne 36 (Day 1 @ 16:54)
Lenka Mok # CLASS: character-bar
Good journey!
I have to interrupt your voyage - I've never had to before...
But with the First Order onboard, I have not choice but to involve you.
It seems my droid transferred some sensitive information to your Datapad.
SK can be overly trusting....and as their friend, I have to make sure we protect them...and the Resistance.
You now have the coordinates to a hidden Resistance encampment on Batuu - where we're headed tomorrow.
    * [What do you need me to do?]
            <div class="player-answer">What do you need me to do?</div>
        -> have_coordinates 

==== have_coordinates ====
// Dianne 38 (Day 1 @ 16:59)
Lenka Mok # CLASS: character-bar
It's troubling that Lt. Croy has caught onto our travels around the galaxy...and he can't find out about Batuu.
I need you to keep that Resistance camp location secret, especially with Lt. Croy sniffing around.
    * [I'll keep the Resistance location safe!]
            <div class="player-answer">I'll keep the Resistance location safe!</div>
            Lenka Mok # CLASS: character-bar
            I knew I could count on you!
            Ignite the spark!
            TRANSMISSION ENDED # CLASS: transmission



// ============================================================================
// DAY 2




// ============================================================================
// DAY 3

=== unknown_01 ===
// AR 01
Lenka Mok # CLASS: character-bar
<div class="todo">TODO: Need dialogue.</div>
for the Resistance.
Sometimes we have to let go of those we love for a greater purpose. It's for the best; and I'm sure I'll see them again!
SK wouldn't be safe without your help - and your friendship.
This has certainly been an adventure - and I am so glad we've become friends along the way.
TA' BU E TAY!
-> END
