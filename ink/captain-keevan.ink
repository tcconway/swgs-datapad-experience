# Character: Captain Keevan
# Updated 08-26-2022 @ 9:00 AM ET
# theme: dark
# author: Disney.<br>All rights reserved.
# status: in-development

// ---------- VARIABLES
VAR DEBUG = false

// ---------- DEBUG
{ DEBUG:
	DEBUG MODE! # CLASS: debug
    * [START] -> start_keevan
- else:
    -> start_keevan
}
-> DONE

// ---------- START
=== start_keevan ===
DEV MENU
Parts of dialogue found.
  * [DEV: near_the_beginning]
        -> near_the_beginning
  * [DEV: Could you..]
        -> could_you_meet_me
  * [DEV: I'm always surprised...]
        -> im_always_surprised

== near_the_beginning ==
Captain Keevan # CLASS: character-bar
// Dianne16
I know we haven't gotten much time together today - with the First Order onboard. I have needed to keep them occupied.
Whatever you have heard or seen is part of a bigger plan I share with the Resistance.
I have never involved a passenger in my Resistance dealings, but we need help conducting Resistance business while you are on Battu.
// Dianne17
Lenka and sammie have spoken of your courage and I believe I can rely on them – and on you.
The Resistance is counting on it.
However, you have proven yourself to be a tenacious passenger – and for that I thank you.
Check your Datapad while on Batuu – I will send further instructions after you board your transport.
TRANSMISSION ENDED # CLASS: transmission
    * [<span class="non-datapad-action">(The next day...)</span>]
        -> the_next_day

// ============================================================================
// DAY 2
== the_next_day ==
Captain Keevan # CLASS: character-bar
// Dianne18
You've agreed to use your planet excursion on Batuu to support our work with the Resistance.
I thank you for that.
With the First Order investigation escalating, Lenka and I must stay onboard and protect the ship.
On most excursions, we would take care of the Resistance business ourselves – but now, I'm putting my trust in your to ensure our operations go as planned.
// Dianne19
Choose one to complete first – you must complete it before beginning another.

You # CLASS: player-bar
    * Go to the Resistance Encampment.  # CLASS: player-answer
        -> resistance_encampment
    * Steal the coaxium with the Millenium Falcon. # CLASS: player-answer
        -> steal_coaxium

=== resistance_encampment ===
Captain Keevan # CLASS: character-bar
I need you to send word to General Organa about the data that SK is protecting.
There is a Resistance team stationed on Batuu that can get this information to her.
// Dianne20
# IMAGE: ./images/resistance-station.png
Head to these coordinates marked on your map.
When you're there, tap the map marker to let me know you've arrived.
Data received. # CLASS: action
<a href="" class="button-text">SHOW MAP</a> # CLASS: button
    * [<span class="non-datapad-action">(tap the marker...)</span>]
        -> tap_marker

== tap_marker ==
Captain Keevan # CLASS: character-bar
// Dianne21
I see you've made your way into the Resistance encampment.
Your M-Band tap at the turret will send the data from SK to General Organa.
Make sure to listen to all the instructions from our Resistance ground crew – they'll keepe you safe and make sure the message gets to her.
Let me know if you encounter any issues.
// Dianne22
Captain Keevan # CLASS: character-bar
Watch has reported a damaged Star Destroyer in the Batuu orbit – do you know anything about this?
You # CLASS: player-bar
    * We escaped the First Order!  # CLASS: player-answer
        -> we_escaped

== we_escaped ==
Captain Keevan # CLASS: character-bar
That explains the reports of a damaged First Order cruiser.
Lt. Croy will not be pleased – I'm sure his investigation will step up in light of this news.
// Dianne23
We will need to prepare for further escalation from the First Order.
What's important is that you're safe.
+ { not steal_coaxium } -> didnt_steal_coaxium
+ { steal_coaxium } -> done_with_batuu
    
== didnt_steal_coaxium ==
Captain Keevan # CLASS: character-bar
There's one last thing I need you to do on Batuu today.
    * Steal the coaxium with the Millenium Falcon. # CLASS: player-answer
        -> steal_coaxium

== steal_coaxium ==
Captain Keevan # CLASS: character-bar
Right. Head to the spaceport to get those coordinates to Hondo Ohnaka – he runs Ohnaka Transport Solutions, a ...less than reputable shipping company.
Gaya told me we could trust him, nonetheless I have my reservations.
Chewbacca has reassured me that the Millennium Falcon will be docked there for the purposes of this deal.
# IMAGE: ./images/millenium-falcon.png
When you arrive, let the crew working at the spaceport know you have some coordinates for Hondo.
# IMAGE: ./images/ohnaka-transport-solutions.png
They'll ask you to tap your M-Band – this will transfer the coordinates to the coaxium transport to Hondo.
Hondo will get you to Corellia and help you get the coaxium -- safely. He promised.
Keep watch over your fellow passengers; there are scoundrels around and we need to make sure this deal goes smoothly.
You # CLASS: player-bar
    * I already finished my mission with Hondo! # CLASS: player-answer
        -> finished_hondo

== finished_hondo ==
Captain Keevan # CLASS: character-bar
I feel better knowing that you're safe and sound.
You were able to secure the coaxium?

You # CLASS: player-bar
    * Yes, we did it! # CLASS: player-answer
        -> secure_coaxium

== secure_coaxium ==
Captain Keevan # CLASS: character-bar
You've done more than you can imagine.
The Resistance thanks you.
Hondo will deliver the coaxium later. Please enjoy the rest of your day on Batuu!

Captain Keevan # CLASS: character-bar
Raithe Kole will be receiving the delivery of the coaxium when Hondo delivers it later this evening.
Whether it's a good idea to leave him in charge remains to be seen...I could use your help in the Atrium to make sure Lt. Croy doesn't find out.
Gaya's performance in the atrium this evening has been arranged as cover.
<a href="" class="button-text">SHOW EVENTS</a> # CLASS: button

Captain Keevan # CLASS: character-bar
Could you...meet me on the Bridge tonight?
I normally wouldn't disrupt your last night on the ship...but the situation has gotten dire.
We need to regroup and strategize about how to get the Halcyon to safety.
I'll add a reminder to your itinerary.
Please be prompt...we have much to do.
<a href="" class="button-text">SHOW EVENTS</a> # CLASS: button
TRANSMISSION ENDED # CLASS: transmission

+ { not resistance_encampment } -> didnt_resistance_encampment
+ { resistance_encampment } -> done_with_batuu

== didnt_resistance_encampment
Captain Keevan # CLASS: character-bar
There's one last thing I need you to do on Batuu today.
    * Go to the Resistance Encampment.. # CLASS: player-answer
        -> resistance_encampment
        
== done_with_batuu ==
Please enjoy the rest of your day on Batuu!

-> DONE



=== could_you_meet_me ===
Captain Keevan # CLASS: character-bar
Could you...meet me on the Bridge tonight?
I normally wouldn't disrupt your last night on the ship...but the situation has gotten dire.
We need to regroup and strategize about how to get the Halcyon to safety.
I'll add a reminder to your itinerary.
Please be prompt...we have much to do.
    -> END

==== im_always_surprised ====
Captain Keevan # CLASS: character-bar
I'm always surprised by how tenacious our passengers can be...always ready for an adventure, true to the Chandrila Star Line spirit.
It's not over yet - and while I must return to my duties to keep the ship safe, I have one last thing to ask of you:
If you happen to see a violet suitcase, help keep it with the Resistance.
It'll be vital to our escape.
    -> END