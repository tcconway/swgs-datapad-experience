# Character: Saja
# Updated 05-02-2022 @ 3:17 PM ET
# theme: dark
# author: Disney.<br>All rights reserved.
# status: in-development

// ---------- VARIABLES
VAR DEBUG = true

// ---------- DEBUG
{ DEBUG:
	DEBUG MODE! # CLASS: debug
    * [START] -> start_saja
    * [Unknown location Parts] -> unknown
- else:
    -> start_saja
}
-> DONE

// ============================================================================
// DAY 1, START
=== start_saja ===
//Dianne60 (Day ? @23:19)
Saja # CLASS: character-bar
Thank you for joining us for lightsaber training today.
What an extraordinary session - to have so many among us who connect with the Force!
Remember your training - Readiness is everything.
Now you know to let your intuition guide you down your path.
//Dianne61
I hope to see you around the starcruiser.
TRANSMISSION ENDED # CLASS: transmission
    * [<em>(TBD: Some trigger)</em>]
        -> tbd_some_trigger

=== tbd_some_trigger ===
/// Dianne 61-64 (Day 1 @ 23:19)
Saja # CLASS: character-bar
It has been an honor to share this path with you today.
And while today's journey has been disrupted my many unexpected turns, we Saja believe you could help us while on your planet excursion.
The Saja are nomadic - we travel the galaxy searching for ties to our ancestors that will teach us about the Jedi and their way of life.
There are rumors of Jedi relics making their way to Batuu, and there is a scavenger there - Savi - whose path is aligned with ours - a friend you can trust.
He has set aside some relics to help us continue our study.
He will get in contact with us on Batuu with directions to the crates.
However, we must avoid alerting the First Order.
You # CLASS: player-bar
    * [How can I help?]
        <div class="player-answer">How can I help?</div>
        -> how_can_i_help

=== how_can_i_help ===
Saja # CLASS: character-bar
What a kind offer from a gracious soul.
We'll send you more information before your excursion.
I'll have the crew put a reminder on your itinerary.
Until then, however - rest. Recenter yourself and be ready for what is yet to come.
<a href="" class="button-text">SHOW EVENTS</a> # CLASS: button
TRANSMISSION ENDED # CLASS: transmission
    * [<em>(The next morning...)</em>]
        -> next_morning


// ============================================================================
// DAY 2

=== next_morning ===
//Dianne 64-65 (Day 2 * 06:00)
Saja # CLASS: character-bar
Bright Suns! Use this greeting on Batuu for positive connections.
As you explore Black Spire Outpost, make sure to take in your surroundings in this new place!
We are encouraged to find someone like Savi with a path aligned with ours – and are eager to get in contact with him.
Try tuning into the nearby antenna - we'll get in touch with Savi directly.
Head to these coordinates on your map.
When you arrive, tap the map marker to tune into the antenna.
    * [<em>(Mission: Tune into the antenna.)</em>]
        -> mission_tune_antenna

=== mission_tune_antenna ===
// Dianne 66
Saja # CLASS: character-bar
Well done! It appears Savi enclosed some coordinates to those artifacts he's set aside for us.
These coordinates lead you to his workshop - make your way there to find these crates.
When you arrive, tap the map marker to initiate the scan tool
// Dianne67
# IMAGE: ./images/location-img-savicratesswgs(18C8)(04C4)_(2)(04C4).png
<div class="action">Data received.</div>
<div class="button"><a href="" class="button-text">SHOW MAP</a></div>
    * [<em>(Mission: Scan crates)</em>]
        -> scan_crates

=== scan_crates ===
Saja # CLASS: character-bar
Incredible news - we've uncovered some Jedi artifacts on Batuu and they're on their way up to the starcruiser.
// DIANNE 68
A mysterious crate is included in the shipment - our contact on Batuu said they had a feeling it would be special to us.
We'd love for you to join us in the Training pod tonight - We'll open it together.
<a href="" class="button-text">SHOW EVENTS</a> # CLASS: button
TRANSMISSION ENDED # CLASS: transmission
    * [Event: Open container]
        -> event_open_container

=== event_open_container ===
//20:23
Saja # CLASS: character-bar
That holocron is truly a special artifact.
// Dianne69, Jess02
It may have been lost to the ages - but you brought it back to us.
Thank you for your part in its return - and for your foucs to open it.
Master Yoda's message warned us of the darkness that is possible if this falls into the wrong hands...and Rey believes Kylo Ren is on his way.
// Dianne70
Rey needs all the help she can get - the First Order cannot find out about this.
Protect the Holocron - and its secrets...and may the Force be with you.
TRANSMISSION ENDED # CLASS: transmission
-> saja_farewell

=== saja_farewell ===
// Susan01 (6:40)
Saja # CLASS: character-bar
It seems this is where our paths diverge, though in the Force, there every end is also a new beginning.
As you continue on your journey, remember to use your connection to the Force to guide your path - wherever it may lead.
It is an honor to share this path with you.
May the Force be with you.
TRANSMISSION ENDED # CLASS: transmission
-> END




// SEGMENTS ==========================================
=== unknown ===
// KellyFvr03-04
(06:40)
Your connection to our study and practice inspires us - the knowledge you uncovered during this voyage is invaluable.
The lost holocron will be safe with Rey. She will ensure its message is shared and bring light to the darkness.
//Note: diverts here.  // Day 3 am?
It seems this is where our paths diverge, though in the Force, there every end is also a new beginning.
As you continue on your journey, remember to use your connection to the Force to guide your path - wherever it may lead.
It is an honor to share this path with you.
May the Force be with you.
TRANSMISSION ENDED # CLASS: transmission


// Misty01
Now you know to let your intuition guide you down your path.
I hope to see you around the starcruiser.
//Note: diverts here.
(6:40) // Day 3 am?
It seems this is where our paths diverge, though in the Force, there every end is also a new beginning.
As you continue on your journey, remember to use your connection to the Force to guide your path - wherever it may lead.
It is an honor to share this path with you.
May the Force be with you.
TRANSMISSION ENDED # CLASS: transmission


=== unknown_01
// AR06 (Day? @ 22:07)
Saja # CLASS: character-bar
How are you holding up?
You # CLASS: player-bar
    * [All is as the Force wills it.]
        <div class="player-answer">All is as the Force wills it.</div>
        -> holding_up

=== holding_up
// AR06 (Day? @ 22:07)
Saja # CLASS: character-bar
Thank you for sharing your wisdom with us.
It feels as though those who came before us are here with us, guiding our journey and sharing their wisdom, as well.
Follow your instincts - and prepare for whatever is yet to come.




// Susan01, //Monica01
Saja # CLASS: character-bar
TODO Need dialogue here
find our way together.
Maintain your focus - and prepare for whatever is yet to come.
TRANSMISSION ENDED # CLASS: transmission
-> saja_farewell








