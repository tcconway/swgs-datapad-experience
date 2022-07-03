# Notes:

Here are some common code bits and formatting information.

## File header
    # Character: Character Name
    # Updated mm-dd-2022 @ hh:dd AM ET
    # theme: dark
    # author: Disney.<br>All rights reserved.
    # status: in-development
    
    // ---------- VARIABLES
    VAR console_unlocked = false		<-- ANY VARIABLES
    VAR eng_room_unlocked = false		<-- ANY VARIABLES
    VAR DEBUG = false
    
    // ---------- DEBUG
    {DEBUG:
		DEBUG MODE! # CLASS: debug
    	* [START] -> start_character		<-- THE CHARACTER NAME
    	* [You're In] -> youre_in
    - else:
        -> start_character					<-- THE CHARACTER NAME
    }
    -> DONE
    
    // ---------- START
    -> start_character						<-- THE CHARACTER NAME
    
    === start_character ===					<-- THE CHARACTER NAME

## Segments

   I'm not Halcyon crew either.
	You # CLASS: player-bar
	    * Who are you? # CLASS: player-answer
	         -> who_are_you
	    * I'll help you if you help me... # CLASS: player-answer
	        -> ill_help_you
	    * Do you know how to get in? # CLASS: player-answer
	        -> how_to_get_in

This is an example found usually at the end of a character's dialogue, offering the player a choice. Adding "# CLASS: player-answer" will stylize the text after the player makes the choice.

## Player-related bits of code
**Player Name Bar**

    You # CLASS: player-bar

This usually is at the beginning of a diversion, above the choices/questions the player can choose from.

**Player Answer**

    Who are you? # CLASS: player-answer
Use this right after a choice.

## Character-related bits of code

**Character Name Bar**

    Character Name # CLASS: character-bar

This typically is the first element in a Knot.

** Need dialogue**

    TODO: Need dialogue. # CLASS: todo

Some dialogue is missing. Use this as a placeholder.

## Non-Datapad code
This section is for bits of code related to things **not** actually in the Datapad, yet we still need to do things to advance the story along. Unfortunately we aren't wearing M-Bands in Batuu...
 
**Non-Datapad Action**

    * [<span class="non-datapad-action">(Board the Halcyon.)</span>]
 
Parts of the story are triggered by a player's actions. Note the parentheses.

**Non-Datapad Event**

    (You tap your M-Band at Ohnaka Transport Solutions.) # CLASS: non-datapad-event
Parts of the story are triggered by a player's actions. Note the parentheses.

## Other bits of code

**Reference to a Screen Grab**

    // Person ## (Day # @ 12:34)

Use this to reference the player screen grab you are dictating from. This can be placed anywhere and references the image/video file this dialogue came from.

**Action Text**

    Hayananeya Schematics received. # CLASS: action
This is used for actions found within the Datapad, like for when you complete a mission or receive something in your inventory.

**Button**

    <a href="" class="button-text">SHOW EVENTS</a> # CLASS: button

**Photo**
	# IMAGE: ./images/ship-console.png


**End Transmission**

    TRANSMISSION ENDED # CLASS: transmission

**Day Break**

    // ============================================================================
    // DAY 1