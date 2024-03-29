# Character: Sammie
# Updated 05-02-2022 @ 3:17 PM ET
# theme: dark
# author: Disney.<br>All rights reserved.
# status: in-development

// ---------- VARIABLES
VAR DEBUG = true

// ---------- DEBUG
{ DEBUG:
	DEBUG MODE! # CLASS: debug
    * [START] -> start_sammie
- else:
    -> start_sammie
}
-> DONE

// ---------- START
=== start_sammie ===
//(18:39)
TODO
// BEN 18
Sammie # CLASS: character-bar
I know we have to keep this quiet but...
Can you believe we met Chewbacca?!
So wizard!
You # CLASS: player-bar
    * [I can't believe it either!]
        <div class="player-answer">I can't believe it either!</div>
        -> cant_believe_it_either

=== cant_believe_it_either ===
Sammie # CLASS: character-bar
// Ben 18 - 18:39
I call him Chewie...you can too.
'Cause we're friends now. Even though we just met.
// BEN 19
– But...we can't let Lt. Croy know he's onboard or he'll get captured.
Will you keep him from the First Order?
You # CLASS: player-bar
    * [I won't tell anyone Chewie is onboard.]
        <div class="player-answer">I won't tell anyone Chewie is onboard.</div>
        -> i_wont_tell

=== i_wont_tell ===
//BEN 19 - 18:40
Sammie # CLASS: character-bar
GREAT.
Phew.
That's a relief.
// BEN 20
If you see him around the ship make sure to help keep him hidden.
Thanks for your help – ignite the spark!
	* <div class="non-datapad-event">(After Chewie's arrest.)</div>
        -> after_chewies_arrest

=== after_chewies_arrest ===
// Ben 20 - 21:39
Sammie # CLASS: character-bar
I know what you're thinking. You think I got Chewie arrested.
You # CLASS: player-bar
    * [Why did you give Chewie up?]
        <div class="player-answer">Why did you give Chewie up?</div>
        -> why_give_chewie_up

=== why_give_chewie_up ===
Sammie # CLASS: character-bar
I promise - It wasn't my plan to get him arrested! ...but Chewie and the Captain said I had to do it – so I could keep working in plain sight.
// BEN 21
Those bucketheads and the Lieutenant certainly think I'm helping THEM now.
I've only been here for a day - but I'm learning a lot. Sometimes a hero has to make hard choices to keep us going.
But...you know I'm going to make sure I do everything I can to help the Resistance.
You # CLASS: player-bar
    * [Ignight the spark.]
        <div class="player-answer">Ignight the spark.</div>
        -> ignite_the_spark

=== ignite_the_spark ===
Sammie # CLASS: character-bar
That's right – Light the fire!
// 22:03
You don't hate me...do you?
First Chewbacca and now SK...
You # CLASS: player-bar
    * [Why did you bolt SK?]
        <div class="player-answer">Why did you bolt SK?</div>
        -> why_bolt_sk

=== why_bolt_sk ===
Sammie # CLASS: character-bar
I had to bolt SK so Chewbacca could escape.
// BEN 23
You have to make some tough choices.
I'm learning that now.
Don't worry. Chewbacca is on his way to Batuu to keep working on our plan with the coaxium.
It's going to be okay – we'll find a way out of this.
I trust Lenka to coordinate a plan.
She's been doing this a lot longer than me...

//DIANNE 71
I have a favor to ask, if you're up for it?
Lt. Croy is going to try contacting the First Order for backup and we – the crew and I – want to make it as hard for him as possible.
I know we can trust you.
There's some information I need from the Cargo Hold that'll help...I can sneak you in.
You # CLASS: player-bar
    * [I'm in! What do you need me to do?]
        <div class="player-answer">I'm in! What do you need me to do?</div>
        -> im_in
    
-> END

=== im_in ===
// DIANNE 71
Sammie # CLASS: character-bar
There's a First Order crate we took on yesterday that has a bunch of supplies in it.
Maybe one of the manifests includes information about what encrypted frequencies the First Order is using for their communications.
The Cargo Hold's restricted to crew only, but you're with me. I'll get you access, no problem.
Your map should have the Cargo Hold marked on it. Head there and scan that crate!
<div class="action">Item received.</div>
<div class="show-button">SHOW MAP</div>
You # CLASS: player-bar
    * [TODO 01]
        <div class="player-answer">todo 01</div>
        -> todo_01

=== todo_01
Sammie # CLASS: character-bar
TODO
// AR03 - 13:43
(PICTURE, of the crate qr code?)
172459914
That's it!
I'll let Captain Keevan know she can deploy the jammers when she feels the time is right...
Lt. Croy's gonna have a fun time getting in touch with his boss
Nicely done. Over and Out!

-> END