# Star Wars Galactic starcruiser
# Main Index File
# Updated 04-16-2022 @ 9:21 AM ET
# theme: dark
# author: Disney.<br>All rights reserved.

// ---------- INCLUDES


// ---------- VARIABLES
VAR DEBUG = false

// ---------- DEBUG
{ DEBUG:
	DEBUG MODE! # CLASS: debug
    + [START] -> start_index
- else:
    -> start_index
}
-> DONE

// ---------- START
=== start_index ===
This is a work in progress. There are TONS of holes and dialogue not done –  we are actively working to fill. In the meantime, feel free to play it. # CLASS: non-datapad-action
Since you not viewing this on a Datapad – and we don't have things like an M-Band, Ship Console or an Engineering Room etc. to move the story along – we had to make a few accommodations to interact here. # CLASS: non-datapad-action
Items in italics (like this text) are utilitarian only and not found in the Datapad experience. # CLASS: non-datapad-action
Finally, to jump to a different story path, click "Home" at the top right of any other screen. # CLASS: non-datapad-action
-> menu_start

=== menu_start ===
Choose a path: # CLASS: non-datapad-action
<a class="choice" href="csl-announcements.html">CSL Announcements</a>
<a class="choice" href="voyage-information.html">Voyage Information</a>
+ [Characters (Work in progress)] -> menu_characters

=== menu_characters ===
<a class="choice" href="raithe-kole.html">Raithe Kole</a>
<a class="choice" href="captain-keevan.html">Captain keevan</a>
<a class="choice" href="grav-talis.html">Grav Talis</a>
<a class="choice" href="gwellis-bagnoro.html">Gwellis Bagnoro</a>
<a class="choice" href="hondo-ohnaka.html">Hondo Ohnaka</a>
<a class="choice" href="lenka-mok.html">Lenka Mok</a>
<a class="choice" href="lt-croy.html">Lt. Croy</a>
<a class="choice" href="raithe-kole.html">Raithe Kole</a>
<a class="choice" href="saja.html">Saja</a>
<a class="choice" href="sammie.html">Sammie</a>
+ [Back]
    # RESTART 
-> END