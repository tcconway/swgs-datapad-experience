# Character: Sammie
# Updated 04-16-2021 @ 9:21 AM ET
# theme: dark
# author: &copy; Disney. All Rights Reserved.

// ---------- START
<em>Note: Items in italics are utilitarian only and not found in the Datapad experience.</em>
    * [<em>Continue...</em>]-> start_sammie

=== start_sammie ===
//

//(18:39)
TODO
<em>Need dialogue here</em>
I know we have to keep this quiet but...
Can you believe we met Chewbacca?!
So wizard!
    * [I can't believe it either!]
        -> i_cant_believe_it

=== i_cant_believe_it ===
<center>I can't believe it either!</center>
I call him Chewie...you can too.
'Cause we're friends now. Even though we just met.
// BEN 19
- But...we can't let Lt. Croy know he's onboard or he'll get captured.
Will you keep him from the First Order?
    * [I won't tell anyone Chewie is onboard.]
        -> i_wont_tell

=== i_wont_tell ===
<center>I won't tell anyone Chewie is onboard.</center>
//BEN 19
GREAT.
Phew.
That's a relief.
// BEN 20
If you see him around the ship make sure to help keep him hidden.
Thanks for your help - ignite the spark!

<strong>21:39</strong>
I know what you're thinking. You think I got Chewie arrested.
    * [Why did you give Chewie up?]
        -> why_give_chewie

=== why_give_chewie ===
<center>Why did you give Chewie up?</center>
I promise - It wasn't my plan to get him arrested! ...but Chewie and the Captain said I had to do it - so I could keep working in plain sight.
// BEN 21
Those bucketheads and the Lieutenant certainly think I'm helping THEM now.
I've only been here for a day - but I'm learning a lot. Sometimes a hero has to make hard choices to keep us going.
But...you know I'm going to make sure I do everything I can to help the Resistance.
    * [Ignight the spark]
        -> ignite_the_spark

=== ignite_the_spark ===
<center>Ignight the spark</center>
That's right - Light the fire!
// 22:03
You don't hate me...do you?
First Chewbacca and now SK...
    * [Why did you bolt SK?]
        -> why_bolt_sk

=== why_bolt_sk ===
<center>Why did you bolt SK?</center>
I had to bolt SK so Chewbacca could escape.
// BEN 23
You have to make some touch choices.
I'm learning that now.
Don't worry. Chewbacca is on his way to Batuu to keep working on our plan with the coaxium.
It's going to be okay 0 we'll find a way out of this.
I trust Lenka to coordinate a plan.
She's been doing this a lot longer than me...

//DIANNE 71
I have a favor to ask, if you're up for it?
Lt. Croy is going to try contacting the First Order for backup and we - the crew and I - want to make it as hard for him as possible.
I know we can trust you.
There's some information I need from the Cargo Hold that'll help...I can sneak you in.
    * [I'm in! What do you need me to do?]
        -> im_in
    
-> END

=== im_in ===
// DIANNE 71
<center>I'm in! What do you need me to do?</center>
There's a First Order crate we took on yesterday that has a bunch of supplies in it.
Maybe one of the manifests includes information about what encrypted frequencies the First Order is using for their communications.
The Cargo Hold's restricted to crew only, but you're with me. I'll get you access, no problem.
Your map should have the Cargo Hold marked on it. Head there and scan that crate!
<center>Data Received</center>
<div class="show-button">SHOW MAP</div>

    * [TODO 01]
        -> todo_01

=== todo_01
<center>TODO 01</center>
NEED DIALOGUE
<em>(PICTURE, of the crate qr code?)</em>
172459914
// (13:43)
That's it!
I'll let Captain Keevan know she can deploy the jammers when she feels the time is right...
Lt. Croy's gonna have a fun time getting in touch with his boss
Nicely done. Over and Out!

TO BE CONTINUED...
-> END