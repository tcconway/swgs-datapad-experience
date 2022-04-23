# Character: Lenka Mok
# Updated 04-16-2021 @ 9:21 AM ET
# theme: dark
# author: Disney.<br>all rights reserved.
# status: in-development

=== start_lenka_mok ===
Welcome aboard the Halcyon starcruiser!
I'm Lenka Mok, your cruise director.
I'm so excited to have you join us on our special 275th anniversary voyage to Batuu.
As our ship has recently been refurbished, I would encourage you to explore this beautiful starcruiser and get to know your way around!
    * [Do you have a favorite place on the ship?]
    -> favorite_place

=== favorite_place ===
<center>Do you have a favorite place on the ship?</center>
One of my personal favorite locations is the climate simulator - which changes every voyage based on our destination!
You'll also find plant life from our various past destinations.
One of the plants is from our home world of Chandrila.
Did you know that Chandrila was once the capital of the New Republic after the Rebel Alliance defeated the Empire?
    * [I admire the goals of freedom and hope of the old Rebel Alliance.]
        -> admire_goals

==== admire_goals ====
<center>I admire the goals of freedom and hope of the old Rebel Alliance.</center>
You know, the message of peace and hope is imbued in the Halcyon as well.
I hope to see more of you around the starcruiser!
Please continue exploring our beautiful ship - and grab a bite to eat at the Crown of Corellia dining room!
And don't forget to head to Muster at 4:00 PM. I'll see you there!
<center>/\/\/ TRANSMISSION ENDED \\\\\\</center>
    * [Scan M-Band on SK]
    -> scan_mband_on_sk

=== scan_mband_on_sk ===
Good journey!
I have to interrupt your voyage - I've never had to before...
But with the First Order onboard, I have not choice but to involve you.
It seems my droid transferred some sensitive information to your Datapad.
SK can be overly trusting....and as their friend, I have to make sure we protect them...and the Resistance.
You now have the coordinates to a hidden Resistance encampment on Batuu - where we're headed tomorrow.
    * [What do you need me to do?]
        -> have_coordinates 

==== have_coordinates ====
<center>What do you need me to do?</center>
It's troubling that Lt. Croy has caught onto our travels around the galaxy...and he can't find out about Batuu.
I need you to keep that Resistance camp location secret, especially with Lt. Croy sniffing around.
    * [I'll keep the Resistance location safe!]
        -> keep_location_safe 

==== keep_location_safe ====
<center>I'll keep the Resistance location safe!</center>
I knew I could count on you!
Ignite the spark!
/// TRANSMISSION ENDED \\\
(20:57) Things are...escalating onboard the ship - Sammie uncovered some troubling First Order technology...the Captain bringing Chewbacca onboard means this situation is if more serious than I imagined... and SK's been sharing Resistance data with passengers!
I...have to coordinate all of these plans so we arrive at Batuu safely.
And I'll need your help.
(22:35) SK's capture means we're in a tough spot - but we will not give up.
It's important more now than ever that we figure out what Lt. Croy's plan is for this ship and crew.
I've found the schematics of the ship. I think it'll help.
<strong><em>Schematic: Halcyon received.</em></strong><strong><em></em></strong>
    * [How do we deal with Lt. Croy?]
        -> deal_with_croy 

==== deal_with_croy ====
<center>How do we deal with Lt. Croy?</center>
We work together.
We'll undermine and uncover all of his plans.
(23:18) Thank you for sticking by SK. Sammie and me - you're a true friend of the Resistance.
Captain Keevan trusts us to make things right.
I'll need your help on your planet excursion - to rescue SK and catch up to Lt. Croy's plan.
I've added some reminders to your itinerary and I'll send details once you're on your way to Batuu.
Until then...get some rest! you'll need it. It's sure to be an adventure.
If you look, there are always stars int he galaxy to light our way.
/// TRANSMISSION ENDED \\\
    * [I have a reservation to Oga's]
        -> have_reservation
    * I do not have a reservation to Oga's)
        -> no_reservation
 
=== no_reservation ===
To do
-> have_reservation

=== have_reservation ===
(23:29) Oh, by the way, I see you're headed to Oga's Cantina!
A wise choice - apart from being the best place in the Outer Rim for drinks, there's also some...unique clientele.
Oga can help us get in contact with a forger to hlep with those ship schematics.

- Keep an eye on your Datapad while on Batuu - I'll send more details then.
/// TRANSMISSION ENDED \\\
(09:03) I know this was meant to be a normal planet excursion - I usually take care of these things myself while at ports of call but I am under too much scrutiny from Croy.
I appreciate your willingness to complete our Resistance operations.
    -> DIANNE_45

==== DIANNE_45 ====
(09:08) We need to find a way to rescue SK and figure out why Lt. Croy needed those ship schematics yesterday.
Which would you be able to handle first?
Please choose carefully - you'll need to complete one before starting another.
    * Find a way to rescue SK.
    -> rescue_sk


==== rescue_sk ====
(13:09) That explains these new datatapes that just appeared on our cargo manifest.
These must be for the engineering room.
I'll regroup with Sammie and figure out how to use these datatapes to safeguard the ship against whatever Croy has planned.
I can't thank you enough for your dedication to helping this ship, it's crew...and the Resistance.


-> DONE

= forTheResistance
___for the resistance
Sometimes we have to let go of those we love for a greater purpose. It's for the best; and I'm sure I'll see them again!
SK wouldn't be safe without your help - and your friendship.
This has certainly been an adventure - and I am so glad we've become friends along the way.
TA' BU E TAY!

-> END

    -> END