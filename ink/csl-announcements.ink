# Character: CSL Announcements
# Updated 05-02-2022 @ 3:17 PM ET
# theme: dark
# author: Disney.<br>All rights reserved.
# status: done

// ---------- VARIABLES
VAR DEBUG = false

// ---------- DEBUG
{ DEBUG:
	DEBUG MODE! # CLASS: debug
    + [Start] -> start_csl_announcements
    + [Muster] -> muster
- else:
    -> start_csl_announcements
}
-> DONE

// ---------- START
=== start_csl_announcements ===
// DIANNE 09 (19:47)
CSL ANNOUNCEMENTS # CLASS: character-bar
Welcome to Chandrila Star Line!
We are so excited for you to join us on your upcoming voyage on the Halcyon starcruiser.
Until then, familiarize yourself with the features of your Datapad using the Voyage Information channel in your Comms.
Thank you and we look forward to your arrival!
TRANSMISSION COMPLETE # CLASS: transmission
    * [<span class="non-datapad-action">(A few days before arrival day...)</span>]
        -> under_investigation

=== under_investigation ===
CSL ANNOUNCEMENTS # CLASS: character-bar
// DIANNE 10 (23:02)
All passengers, please be advised that Chandrila Star Line is currently under investigation by the First Order.
We do not expect this to impact your upcoming voyage on the Halcyon starcruiser in any way.
Thank you and we are excited to welcome you for your journey.
May the stars light your way!
TRANSMISSION ENDED # CLASS: transmission
    * [<span class="non-datapad-action">(Around 3:50 PM on arrival day...)</span>]
        -> muster

=== muster ===
CSL ANNOUNCEMENTS # CLASS: character-bar
// DIANNE 11 (15:50)
Muster is beginning shortly. Please make your way to the Atrium!
<a href="" class="button-text">SHOW EVENTS</a> # CLASS: button
TRANSMISSION ENDED # CLASS: transmission
    * [<span class="non-datapad-action">(The next morning...)</span>]
        -> excursion

=== excursion ===
CSL ANNOUNCEMENTS # CLASS: character-bar
// DIANNE 11-12 (06:00)
Attention all passengers! Today is your excursion to Black Spire Outpost on the planet Batuu.
Your transport time is listed on your itinerary in the Events page of your Datapad.
Shuttles are available throughout the day between the Halcyon and Docking Bay 3 on Batuu.
Please be sure to check posted times for the last transport.
<a href="" class="button-text">SHOW EVENTS</a> # CLASS: button
TRANSMISSION ENDED # CLASS: transmission
    * [<span class="non-datapad-action">(Around 5:15 PM...)</span>]
        -> blockade

=== blockade ===
CSL ANNOUNCEMENTS # CLASS: character-bar
// Dianne 13 (17:18)
Attention all passengers!
The Halcyon Starcruiser is currently under a First Order blockade.
TIE Fighters have begun patrolling the starcruiser.
Please comply with all crew member instructions and remain respectful of all other passengers.
Thank you.
TRANSMISSION ENDED # CLASS: transmission
    * [<span class="non-datapad-action">(Around 9:15 PM...)</span>]
        -> shipwide_alert

=== shipwide_alert ===
CSL ANNOUNCEMENTS # CLASS: character-bar
// Dianne14 (21:19)
Attention all Passengers!
The Halcyon Starcruiser is under a shipwide alert.
Please report to your muster stations immediately and we remind you to remain respectful of all onboard the ship.
TRANSMISSION ENDED # CLASS: transmission
    * [<span class="non-datapad-action">(The last day...)</span>]
        -> conclusion

=== conclusion ===
CSL ANNOUNCEMENTS # CLASS: character-bar
// Susan01 (06:40), Meredith 14 (6:40)
Attention all passengers! This concludes your Halcyon starcruiser voyage. We've enjoyed every moment with you on this adventure!
Your Datapad functionality will return to its core functionality as you disembark. Thank you for joining us on this voyage with Chandrila Star Line.
May the stars light your way!
TRANSMISSION ENDED # CLASS: transmission
-> END