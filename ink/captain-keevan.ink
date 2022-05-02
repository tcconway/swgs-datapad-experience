# Character: Captain Keevan
# Updated 05-02-2021 @ 3:17 PM ET
# theme: dark
# author: Disney.<br>all rights reserved.
# status: in-development

// ---------- VARIABLES
VAR DEBUG = false

// ---------- DEBUG
{ DEBUG:
	<strong>DEBUG MODE!</strong>
    * [START] -> start_keevan
- else:
    -> start_keevan
}
-> DONE

// ---------- START
=== start_keevan ===
DEV MENU
  * [couldYoumeetMeOn]
        -> couldYoumeetMeOn 
  * [imAlwaysSurprise]
      TODO: This choice is a loose end.

=== couldYoumeetMeOn ===
<div class="name-bar player">Captain Keevan</div>
Could you...meet me on the Bridge tonight?
I normally wouldn't disrupt your last night on the ship...but the situation has gotten dire.
We need to regroup and strategize about how to get the Halcyon to safety.
I'll add a reminder to your itinerary.
Please be prompt...we have much to do.
    -> END

==== imAlwaysSurprise ====
<div class="name-bar player">Captain Keevan</div>
I'm always surprised by how tenacious our passengers can be...always ready for an adventure, true to the Chandrila Star Line spirit.
It's not over yet - and while I must return to my duties to keep the ship save, I have one last thing to ask of you:
If you happen to see a violet suitcase, help keep it with the Resistance.
It'll be vital to our escape.
    -> END