# Character: Saja
# Updated 04-16-2021 @ 9:21 AM ET
# theme: dark
# author: Disney.<br>all rights reserved.
# status: in-development

-> start_saja

=== start_saja ===
//Dianne60 (23:19)
<div class="character-header">Saja</div>
Thank you for joining us for lightsaber training today.
What an extraordinary session - to have so many among us who connect with the Force!
Remember your training - Readiness is everything.
Now you know to let your intuition guide you down your path.
//Dianne61
I hope to see you around the starcruiser.
<div class="transmission">\/\/\/ TRANSMISSION ENDED \\\\\\</div>
TODO -> saja_farewell if conditions are met.

//23:19
<div class="character-header">Saja</div>
It has been an honor to share this path with you today.
And while today's journey has been disrupted my many unexpected turns, we Saja believe you could help us while on your planet excursion.
//23:26
The Saja are nomadic - we travel the galaxy searching for ties to our ancestors that will teach us about the Jedi and their way of life.
//Dianne62
There are rumors of Jedi relics making their way to Batuu, and there is a scavenger there - Savi - whose path is aligned with ours - a friend you can trust.
He has set aside some relics to help us continue our study.
He will get in contact with us on Batuu with directions to the crates.
//Dianne63
However, we must avoid alerting the First Order
    * [How can I help?]
        -> how_can_i_help

=== how_can_i_help ===
<div class="player-header">You</div>
<div class="player-answer">How can I help?</div>
<div class="character-header">Saja</div>
What a kind offer from a gracious soul.
We'll send you more information before your excursion.
I'll have the crew put a reminder on your itinerary.
//Dianne64
Until then, however - rest. Recenter yourself and be ready for what is yet to come.
<div class="button"><a href="" class="button-text">SHOW EVENTS</a></div>
<div class="transmission">\/\/\/ TRANSMISSION ENDED \\\\\\</div>

//06:00
<div class="character-header">Saja</div>
Bright Suns! Use this greeting on Batuu for positive connections.
As you explore Black Spire Outpost, make sure to take in your surroundings in this new place!
// DIANNE 65
We are encouraged to find someone like Savi with a path aligned with ours - and are eager to get in contact with him.
Try tuning into the nearby antenna - we'll get in touch with Savi directly.
Head to these coordinates on your map.
When you arrive, tap the map marker to tune into the antenna.
    * <em>[Mission: Tune into the antenna.]</em>
        -> tune_antenna

=== tune_antenna ===
// Dianne66
<div class="progression">You complete the mission.</div>
<div class="character-header">Saja</div>
Well done! It appears Savi enclosed some coordinates to those artifacts he's set aside for us.
These coordinates lead you to his workshop - make your way there to find these crates.
When you arrive, tap the map marker to initiate the scan tool
// Dianne67
<img src="./images/crates-savis.png" />
<div class="action">Data received.</div>
<div class="button"><a href="" class="button-text">SHOW MAP</a></div>
    * <em>[Mission: Scan crates]</em>
        -> scan_crates

=== scan_crates ===
<div class="character-header">Saja</div>
Incredible news - we've uncovered some Jedi artifacts on Batuu and they're on their way up to the starcruiser.
// DIANNE 68
A mysterious crate is included in the shipment - our contact on Batuu said they had a feeling it would be special to us.
We'd love for you to join us in the Training pod tonight - We'll open it together.
<div class="button"><a href="" class="button-text">SHOW EVENTS</a></div>
<div class="transmission">\/\/\/ TRANSMISSION ENDED \\\\\\</div>
    * [Event: Open container]
        -> event_open_container

=== event_open_container ===
//20:23
<div class="character-header">Saja</div>
That holocron is truly a special artifact.
// Dianne69, Jess02
It may have been lost to the ages - but you brought it back to us.
Thank you for your part in its return - and for your foucs to open it.
Master Yoda's message warned us of the darkness that is possible if this falls into the wrong hands...and Rey believes Kylo Ren is on his way.
// Dianne70
Rey needs all the help she can get - the First Order cannot find out about this.
Protect the Holocron - and its secrets...and may the Force be with you.
<div class="transmission">\/\/\/ TRANSMISSION ENDED \\\\\\</div>


=== saja_farewell ===
// Susan01 (6:40)
<div class="character-header">Saja</div>
It seems this is where our paths diverge, though in the Force, there every end is also a new beginning.
As you continue on your journey, remember to use your connection to the Force to guide your path - wherever it may lead.
It is an honor to share this path with you.
May the Force be with you.
<div class="transmission">\/\/\/ TRANSMISSION ENDED \\\\\\</div>
-> END




// SEGMENTS ==========================================

// KellyFvr03-04
(06:40)
Your connection to our study and practice inspires us - the knowledge you uncovered during this voyage is invaluable.
The lost holocron will be safe with Rey. She will ensure its message is shared and bring light to the darkness.
//Note: diverts here.  // Day 3 am?
It seems this is where our paths diverge, though in the Force, there every end is also a new beginning.
As you continue on your journey, remember to use your connection to the Force to guide your path - wherever it may lead.
It is an honor to share this path with you.
May the Force be with you.
<div class="transmission">\/\/\/ TRANSMISSION ENDED \\\\\\</div>


// Misty01
Now you know to let your intuition guide you down your path.
I hope to see you around the starcruiser.
//Note: diverts here.
(6:40) // Day 3 am?
It seems this is where our paths diverge, though in the Force, there every end is also a new beginning.
As you continue on your journey, remember to use your connection to the Force to guide your path - wherever it may lead.
It is an honor to share this path with you.
May the Force be with you.
<div class="transmission">\/\/\/ TRANSMISSION ENDED \\\\\\</div>


// AR06

How are you holding up?
//  * All is as the Force wills it.
Thank you for sharing your wisdom with us.
It feels as though those who came before us are here with us, guiding our journey and sharing their wisdom, as well.
Follow your instincts - and prepare for whatever is yet to come.


// Susan01, //Monica01
TODO Need dialogue here
find our way together.
Maintain your focus - and prepare for whatever is yet to come.
<div class="transmission">\/\/\/ TRANSMISSION ENDED \\\\\\</div>
-> saja_farewell








