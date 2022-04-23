# Character: Gwellis Bagnoro
# Updated 04-18-2021 @ 4:36 PM ET
# theme: dark
# author: Disney.<br>all rights reserved.
# status: done

// ---------- VARIABLES
VAR ronto_roasters_off = false
<div class="button"><a href="" class="button-text">SHOW MAP</a></div>

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
// Alice 07
<div class="character-header">Gwellis Bagnoro</div>
The First Order, eh? Yeah they've been poking around.
Said they needed to override the ship systems.
If you're trying to stop them, I'm willing to help – though my rates might get a little higher.
This Halcyon conflict is proving very profitable.
<div class="player-header">You</div>
    *[I have the ship schematics – can you help?]
        <div class="player-answer">I have the ship schematics – can you help?</div>
        <img src="./images/ship-schematics.png" />
        -> have_schematics

=== have_schematics ===
<div class="character-header">Gwellis Bagnoro</div>
Hm...this starcruiser's had a lot of work done over the years.
But I think I can be convinced to share a way to override the ship too.
I'll do it for 10,000 credits.
<div class="player-header">You</div>
    *[I don't have that kind of money!]
        <div class="player-answer">I don't have that kind of money!</div>
        -> dont_have_money

=== dont_have_money ===
<div class="character-header">Gwellis Bagnoro</div>
Tough luck. This kind of work doesn't come cheap.
Alternatively...I could use a favor.
<div class="player-header">You</div>
    *[A favor?]
        <div class="player-answer">I don't have that kind of money!</div>
        -> a_favor

=== a_favor ===
I live in these apartments above the marketplace.
Unfortunately, that means dealing with that stupid podracing engine Bakkar installed to cook his ronto meat.
<img src="./images/ronto_roasters.png" />
That thing is so loud I can't concentrate.
If you'll shut it down for me, I'll do this work for you.
<div class="player-header">You</div>
    * [Where do I need to go?]
        <div class="player-answer">Where do I need to go?</div>
        -> where_do_i_go

=== where_do_i_go ===
<div class="character-header">Gwellis Bagnoro</div>
I'm sending the coordinates to your datapad.
Head here and tap the map marker. Hack that engine to shut it down.
<div class="button"><a href="" class="button-text">VIEW TRANSCRIPT</a></div>
    * [<em>You hack the engine</em>]
        -> hack_engine

=== hack_engine ===
<div class="character-header">Gwellis Bagnoro</div>
Ah, well done – finally some peace and quiet.
Alright, Alright, let's take a look.
<div class="player-header">You</div>
    * [Any idea how to stop the First Order?]
        <div class="player-answer">Any idea how to stop the First Order?</div>
        -> stop_first_order

=== stop_first_order ===
<div class="character-header">Gwellis Bagnoro</div>
I agreed to help the First Order override the ship's security protocols and get access to the base systems.
Unfortunately...you'll need some datatapes that will have to manually be placed in ports in the ship's engineering room to get the same access.
I'll need you to find some in order to develop the workaround.
Think you can manage that for me?
<div class="player-header">You</div>
    * [Where can I find them?]
        <div class="player-answer">Where can I find them?</div>
        -> where_find_them

=== where_find_them ===
<div class="character-header">Gwellis Bagnoro</div>
Hm...these old datatapes were also used in droid programming.
Try behind the Droid Depot – sometimes Mubo leaves some old scraps back there.
Head there and tap the map marker to initiate your scan tool.
<img src="./images/crates-droid-depot.png" />
<div class="action">Data Received.</div>
<div class="button"><a href="" class="button-text">SHOW MAP</a></div>
<div class="button"><a href="" class="button-text">VIEW MANIFEST</a></div>
    * [<em>You scan the datatapes</em>]
        -> scan_datatapes

=== scan_datatapes ===
<div class="character-header">Gwellis Bagnoro</div>
Ah, you found them!
I'll get to programming these.
<div class="player-header">You</div>
    * [How will they get back to the ship?]
        <div class="player-answer">How will they get back to the ship?</div>
        -> how_get_back

=== how_get_back ===
<div class="character-header">Gwellis Bagnoro</div>
Don't worry – you'll get them soon enough.
// // Alice 07, AR 04
I'll pack these datatapes up in a crate and send it up with your transport.
<img src="./images/crate-datatapes.png" />
Now go tell Lenka that the job's done.
<div class="action">Received Data</div>
<div class="button"><a href="" class="button-text">SHOW COMMS</a></div>
<div class="transmission">\/\/\/ TRANSMISSION ENDED \\\\\\</div>
-> END