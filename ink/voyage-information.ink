# Character: Voyage Information
# Updated 06-02-2022 @ 6:32 PM ET
# theme: dark
# author: Disney.<br>All rights reserved.
# status: done

// ---------- VARIABLES
VAR DEBUG = false

// ---------- DEBUG
{ DEBUG:
	DEBUG MODE! # CLASS: debug
    + [START] -> start_voyage_information
- else:
    -> start_voyage_information
}
-> DONE

// ---------- START
=== start_voyage_information ===
VOYAGE INFORMATION # CLASS: character-bar
Welcome to the Halcyon starcruiser!
-> how_can_i_help

=== how_can_i_help ===
How can I help?
You # CLASS: player-bar
    + Can you teach me some phrases? #CLASS:player-answer
        -> teach_me_phrases
    + I'd like to learn more about my planet excursion. #CLASS:player-answer
        -> learn_more_about_excursion
    + I'm done. Thank you! #CLASS:player-answer
        -> END

=== teach_me_phrases ===
VOYAGE INFORMATION # CLASS: character-bar
What phrases would you like to learn?
-> phrases_menu

=== phrases_menu ===
You # CLASS: player-bar
    + I want to say Hello! #CLASS: player-answer
        VOYAGE INFORMATION # CLASS: character-bar
        A' DEG A' is an Anzellan greeting that we use on the ship as a sign of respect. It's pronounced "Ah-deeg-ah." Try using it instead of "Hello!" while conversing with crew.
        While on Batuu, you might hear villagers say "Bright Suns!" this is another local greeting that references the three suns of the planet Batuu.
        In the evening, they'll switch over to saying "Rising Moons," a nighttime greeting.
        -> phrases_menu
    + How do I say Goodbye? #CLASS: player-answer
        VOYAGE INFORMATION # CLASS: character-bar
        BA MA' SHAY is an Anzellan blessing that means "may you journey boldly". It's pronounced BAY-mah-SHAY - and is a commonly used phrase to say goodbye!
        While on Batuu, many phrases reference the spires that tower over the landscape and are symbols of new opportunities. Try saying "Til the Spire!" to say goodbye! You can also say "May the Spires keep you" to wish someone well.
        -> phrases_menu
    + Let's Celebrate! #CLASS: player-answer
        VOYAGE INFORMATION # CLASS: character-bar
        Try saying "TA' BU E TAY!" This Anzellan phrase is pronounced Tah-BOO-ee-TAY and is a celebratory blessing that means "Cherish the moment." We say this when celebrating any special event onboard the ship!
         -> phrases_menu
    + [I'm done learning phrases for now.]
        <div class="player-answer">I'm done learning phrases for now.</div>
            VOYAGE INFORMATION # CLASS: character-bar
            -> how_can_i_help

=== learn_more_about_excursion ===
VOYAGE INFORMATION # CLASS: character-bar
The second day of your voyage includes a planet excursion to Black Spire Outpost on the planet Batuu!
Shuttles will transport passengers to and from the planet.
You will need to return to the ship before the last transport shuttle leaves from Black Spire Outpost, so check your Datapad Events for the latest times.
    -> excursion_menu

=== excursion_menu ===
You # CLASS: player-bar
    + Tell me about the shopping! #CLASS: player-answer
        VOYAGE INFORMATION # CLASS: character-bar
        There are many local shopping opportunities at Black Spire Outpost!
        Check out the marketplace, where local vendors have set up stalls with their wares – from toys at the Toydarian Toymaker to adopting a creature at the Creature Stall!
        Head to Dok-Ondar's Den of Antiquities, where you'll find relics from bygone eras that Dok-Ondar has collected from throughout the galaxy.
        If you're interested in building your very own astromech companion or pick up some droid supplies, the Droid Depot is your best bet.
        And, since the First Order has just recently landed at the outpost, they've set up a supply shop at Docking Bay 9.
        -> excursion_menu
    + What is the food like? #CLASS: player-answer
        VOYAGE INFORMATION # CLASS: character-bar
        Docking Bay 7 Food and Cargo is the best place to get a meal at Black Spire Outpost. Chef Cookie Tuggs has traveled the galaxy, using ingredients to make new and unsusal dishes inspired from his time on Takodana.
        You can also find refreshing blue or green milk from Bubo Wamba's Family Farm at the Milk Stand, or grab a snack of popped grains from Kat Saka's Kettle.
        Of course, we are contractually required to mention that Oga's Cantina is the best place to grab a drink while at the outpost – and check out the latest music from DJ-R3X.
        Lunch will also be available here on the Halcyon starcruiser. Check your Datapad Events for more information.
        -> excursion_menu
    + I'm done. Thank you! #CLASS: player-answer
        -> END
-> END
