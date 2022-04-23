# Character: Gwellis Bagnoro
# Updated 04-18-2021 @ 4:36 PM ET
# theme: dark
# author: Disney.<br>all rights reserved.
# status: in-development

-> start_gwellis_bagnoro

=== start_gwellis_bagnoro ===
<div class="character-header">Gwellis Bagnoro</div>
// Alice 07 (11:17)
Ah, I see Oga's giving out my contact card.
I expect that's going to cost you.
What do you want?
<div class="player-header">You</div>
    * [The First Order is up to something on the Halcyon starcruiser.]
        <div class="player-answer">The First Order is up to something on the Halcyon starcruiser.</div>
        -> fo_up_to_something

=== fo_up_to_something ===
<div class="character-header">Gwellis Bagnoro</div>
The First Order, eh? Yeah they've been poking around.
Said they needed to override the ship systems.
If you're trying to stop them, I'm willing to help – though my rates might get a little higher.
This Halcyon conflict is proving very profitable.
<div class="player-header">You</div>
    *[I have the ship schematics – can you help?]
        <div class="player-answer">I have the ship schematics – can you help?</div>
        -> have_schematics

=== have_schematics ===








<div class="character-header">Gwellis Bagnoro</div>
TBD dialogue
-> DONE

=== debug_ar ===
// AR04
I'll pack these datatapes up in a crate and send it up with your transport.
<img src="./images/savi-crates.png" />
Now go tell Lenka that the job's done.
<div class="action">Received Data</div>
<div class="button"><span class="button-text">SHOW COMMS</div></div>
<div class="transmission">\/\/\/ TRANSMISSION ENDED \\\\\\</div>



.
-> END