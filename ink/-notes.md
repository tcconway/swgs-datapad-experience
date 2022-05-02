# Notes:

Here are some common code bits and formatting information.

## File header
    # Character: Character Name
    # Updated mm-dd-2022 @ hh:dd AM ET
    # theme: dark
    # author: Disney.<br>all rights reserved.
    # status: in-development
    
    // ---------- VARIABLES
    VAR console_unlocked = false		<-- ANY VARIABLES
    VAR eng_room_unlocked = false		<-- ANY VARIABLES
    VAR DEBUG = false
    
    // ---------- DEBUG
    {DEBUG:
    	DEBUG MODE!
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
    <div class="name-bar player">You</div>
        * [Who are you?]
            <div class="player-answer">Who are you?</div>
             -> who_are_you
        * [I'll help you if you help me...]
            <div class="player-answer">I'll help you if you help me...</div>
            -> ill_help_you
        * [Do you know how to get in?]
            <div class="player-answer">Do you know how to get in?</div>
            -> how_to_get_in

This is an example found usually at the end of a character's dialogue, offering the player a choice. Please notice:
* it ends with character dialogue.
* Each divert is surrounded with "[" and "]". This hides the text after it's selected.
* The next line is the stylized text, including the "player-answer" class.
* The final line is the actual divert. 

## Player-related bits of code
**Player Name Bar**

    <div class="name-bar player">You</div>

This usually is at the beginning of a diversion, above the choices/questions the player can choose from.

**Player Answer**

    <div class="player-answer">Who are you?</div>
Use this right after a choice.

## Character-related bits of code

**Character Name Bar**

    <div class="name-bar">Character Name</div>

This typically is the first element in a Knot.
## Other bits of code

**Reference to a Screen Grab**

    // Person ## (Day # @ 12:34)

Use this to reference the player screen grab you are dictating from. This can be placed anywhere and references the image/video file this dialogue came from.

**A Button**

    <div class="button"><a href="" class="button-text">SHOW EVENTS/span></div>
    <div class="button"><a href="" class="button-text">SHOW EVENTS</a></div>

**A Photo**

    <img src="./images/ship-console.png" />

**Action Text**

    <div class="action">Hayananeya Schematics received.</div>
This is used for actions found within the Datapad, like for when you complete a mission or receive something in your inventory.

**Non-Datapad Action**

    * [<span class="non-datapad-action">(Board the Halcyon.)</span>]
Parts of the story are triggered by a player's actions. This is for actions **not** shown in the actual Datapad, yet needs to happen to advance the story along. Note the parentheses.

**Non-Datapad Event**

    <div class="non-datapad-event">(You tap your M-Band at Ohnaka Transport Solutions.)</div>
Parts of the story are triggered by a player's actions. This is for events **not** found in the Datapad, yet are needed to advance the story along. Note the parentheses.

**End Transmission**

    <div class="transmission">\/\/\/ TRANSMISSION ENDED \\\\\\</div>
<!--stackedit_data:
eyJoaXN0b3J5IjpbODMzMTA1Nzg0LDE1NDczMzc2OTQsNzI4Nj
A1NTgwLC0xNzI5MDMwOTc4LDE0MTk5NTYwMTcsLTExNDE4NTI5
MzYsLTIwNzcyMjkzNjgsLTcyMTU0Mzg2OSwyMDY4NDYwOTUzLD
E4ODY3NzAzNjIsMTA5NjIzODcxNiwxNDMzMTE5MTM3LC0zMTcz
NDU2NzhdfQ==
-->