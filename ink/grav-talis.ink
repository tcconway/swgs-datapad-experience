# Character: Grav Talis
# Updated 05-02-2021 @ 3:17 PM ET
# theme: dark
# author: Disney.<br>all rights reserved.
# status: in-development

// ---------- VARIABLES
VAR DEBUG = false

// ---------- DEBUG
{ DEBUG:
	<strong>DEBUG MODE!</strong>
    * [START] -> start_grav_talis
- else:
    -> start_grav_talis
}
-> DONE

// ---------- START
=== start_grav_talis ===
//KellyF 01 (06:40)
<div class="name-bar">Grav Talis</div>
Good morning. I am Colonel Grav Talis of the First Order.
I have been looking over Lt. Croy's reports and see you were involved in helping him discovery Resistance activity onboard this starcruiser.
However, it is curious that the Lieutenant reproted a clear ship last night.
What have you to say about this?
<div class="name-bar player">You</div>
    * [TBD1]
    -> TBD1

=== TBD1 ===
// KellyF 02 (6:52)
TODO <div class="player-answer"> </div>
<div class="name-bar">Grav Talis</div>
I see. Well, if Lt. Croy could stop the endeavours of the Resistance, we have significant data here to continue monitoring their activity.
Despite his desperate need for approval, Lt. Croy's reports are surprisingly detailed and accurate...and your contributions to this investigation have not gone unnoticed by the First Order.
Well done...
<div class="transmission">\/\/\/ TRANSMISSION ENDED \\\\\\</div>
-> END