# Character: Gwellis Bagnoro
# Updated 05-02-2022 @ 3:17 PM ET
# theme: dark
# author: Disney.<br>All rights reserved.
# status: done

// ---------- VARIABLES
VAR ronto_roasters_off = false
VAR DEBUG = false

// ---------- DEBUG
{ DEBUG:
	DEBUG MODE! # CLASS: debug
    * [START] -> start_gwellis_bagnoro
- else:
    -> start_gwellis_bagnoro
}
-> DONE

// ---------- START
=== start_gwellis_bagnoro ===

Gwellis Bagnoro # CLASS: character-bar
// Alice 07 (11:17)
Ah, I see Oga's giving out my contact card.
I expect that's going to cost you.
What do you want?
You # CLASS: player-bar
    * [The First Order is up to something on the Halcyon starcruiser.]
        <div class="player-answer">The First Order is up to something on the Halcyon starcruiser.</div>
        -> fo_up_to_something

=== fo_up_to_something ===
// Alice 07
Gwellis Bagnoro # CLASS: character-bar
The First Order, eh? Yeah they've been poking around.
Said they needed to override the ship systems.
If you're trying to stop them, I'm willing to help – though my rates might get a little higher.
This Halcyon conflict is proving very profitable.
You # CLASS: player-bar
    *[I have the ship schematics – can you help?]
        <div class="player-answer">I have the ship schematics – can you help?</div>
        # IMAGE:./images/ship-schematics.png
        -> have_schematics

=== have_schematics ===
Gwellis Bagnoro # CLASS: character-bar
Hm...this starcruiser's had a lot of work done over the years.
But I think I can be convinced to share a way to override the ship too.
I'll do it for 10,000 credits.
You # CLASS: player-bar
    *[I don't have that kind of money!]
        <div class="player-answer">I don't have that kind of money!</div>
        -> dont_have_money

=== dont_have_money ===
Gwellis Bagnoro # CLASS: character-bar
Tough luck. This kind of work doesn't come cheap.
Alternatively...I could use a favor.
You # CLASS: player-bar
    *[A favor?]
        <div class="player-answer">I don't have that kind of money!</div>
        -> a_favor

=== a_favor ===
I live in these apartments above the marketplace.
Unfortunately, that means dealing with that stupid podracing engine Bakkar installed to cook his ronto meat.
# IMAGE:./images/ronto_roasters.png
That thing is so loud I can't concentrate.
If you'll shut it down for me, I'll do this work for you.
You # CLASS: player-bar
    * [Where do I need to go?]
        <div class="player-answer">Where do I need to go?</div>
        -> where_do_i_go

=== where_do_i_go ===
Gwellis Bagnoro # CLASS: character-bar
I'm sending the coordinates to your datapad.
Head here and tap the map marker. Hack that engine to shut it down.
<div class="button"><a href="" class="button-text">VIEW TRANSCRIPT</a></div>
	* [<span class="non-datapad-action">(You hack the engine.)</span>]
        -> hack_engine

=== hack_engine ===
Gwellis Bagnoro # CLASS: character-bar
Ah, well done – finally some peace and quiet.
Alright, Alright, let's take a look.
You # CLASS: player-bar
    * [Any idea how to stop the First Order?]
        <div class="player-answer">Any idea how to stop the First Order?</div>
        -> stop_first_order

=== stop_first_order ===
Gwellis Bagnoro # CLASS: character-bar
I agreed to help the First Order override the ship's security protocols and get access to the base systems.
Unfortunately...you'll need some datatapes that will have to manually be placed in ports in the ship's engineering room to get the same access.
I'll need you to find some in order to develop the workaround.
Think you can manage that for me?
You # CLASS: player-bar
    * [Where can I find them?]
        <div class="player-answer">Where can I find them?</div>
        -> where_find_them

=== where_find_them ===
Gwellis Bagnoro # CLASS: character-bar
Hm...these old datatapes were also used in droid programming.
Try behind the Droid Depot – sometimes Mubo leaves some old scraps back there.
Head there and tap the map marker to initiate your scan tool.
# IMAGE:./images/crates-droid-depot.png
<div class="action">Data Received.</div>
<div class="button"><a href="" class="button-text">SHOW MAP</a></div>
<div class="button"><a href="" class="button-text">VIEW MANIFEST</a></div>
	* [<span class="non-datapad-action">(Scan the datatapes.)</span>]
        -> scan_datatapes

=== scan_datatapes ===
Gwellis Bagnoro # CLASS: character-bar
Ah, you found them!
I'll get to programming these.
You # CLASS: player-bar
    * [How will they get back to the ship?]
        <div class="player-answer">How will they get back to the ship?</div>
        -> how_get_back

=== how_get_back ===
Gwellis Bagnoro # CLASS: character-bar
Don't worry – you'll get them soon enough.
// // Alice 07, AR 04
I'll pack these datatapes up in a crate and send it up with your transport.
# IMAGE:./images/crate-datatapes.png
Now go tell Lenka that the job's done.
<div class="action">Received Data</div>
<div class="button"><a href="" class="button-text">SHOW COMMS</a></div>
TRANSMISSION ENDED # CLASS: transmission
-> END