# Character: Lt. Croy
# Updated 04-16-2021 @ 9:21 AM ET
# theme: dark
# author: Disney.<br>all rights reserved.
# status: in-development

-> start_lt_croy

=== start_lt_croy ===
//
<div class="character-header">Lt. Croy</div>
Good day, passenger.
I am Lt. Harmon Croy of the First Order.
My investigations of Resistance activity have led me to this ship.
I am prepared to look deeper and find concrete evidence of Resistance activity onboard the Halcyon starcruiser.
<div class="player-header">You</div>
    * [I'm pretty sure this is just a passenger ___]
        -> just_a_passenger

=== just_a_passenger ===
<div class="player-answer">I'm pretty sure this is just a passenger ___</div>
<div class="character-header">Lt. Croy</div>
Ah...perhaps to you it seems that way.
I suspect there is something lying below that façade.
If you refuse to help me, I will find the evidence I needd another way.
<div class="player-header">You</div>
    * [Roll the chance cubes and see what happens.]
        -> roll_chance_cubes

=== roll_chance_cubes ===
<center>Roll the chance cubes and see what happens.</center>
I'd rather not.
I expect a ship of this class to play host to a better clientele than a scoundrel...it seems I may be mistaken.
Be careful with how you play your cards.
We shall see how your little game plays out.
<center>/\/\/\ TRANSMISSION ENDED \\\\\\</center>

<strong>(18:07)</strong>
In compliance with the First Order inquiry into the crew of the Halcyon starcruiser, I must interrupt your sailing for a brief investigation.
As a citizen and passenger, I expect full compliance.
// Emily 02
I was not impressed by that droid's cheek at muster and I intend to find out what it knows.
// Emily 01
Have you noticed any suspicious activity surrounding Miss Mok's droid, SK-620?
<div class="player-header">You</div>
    * [No, nothing suspicious at all.]
        -> nothing_suspicious
    * That droid has Resistance data.
        -> droid_has_data
    *Information like that comes at a price.
        -> info_comes_at_price


=== nothing_suspicious ===
// Emily 01
<center>No, nothing suspicious at all.</center>
I see - well, I will advise you to be a bit more observant.
You would ldo well to carefully choose where your loyalties lie.
I believe I will need to inspect that droid and extract its information - with our without your help.
<center>/\/\/\ TRANSMISSION ENDED \\\\\\</center>

<strong>(22:39)</strong>
I am obtaining supplies from my First Order superiors to interrogate the droid, SK-620.
While my troopers track hikm down, I want to learn more about this ship and how it operates.
Can I rely on your assistance?
<div class="player-header">You</div>
    * [What is your plan?]
        -> what_is_your_plan

=== droid_has_data ===
TODO

=== info_comes_at_price ===
TODO


=== what_is_your_plan ===
<center>What is your plan?</center>
If I find the crew of this ship are indeed Resistance operatives, we must have a way to secure it when - if - the time comes.
That means learning a little more about how it works.
Ship schematics would be very useful in this endeavour.
I will not ask again - will you be loyal to the First Order and assist with this mission?
<div class="player-header">You</div>
  * [You'll have to look elsewhere for support.]
        -> look_elsewhere

=== look_elsewhere ===
<center>You'll have to look elsewhere for support.</center>
Ah, I see.
I must advise you that the evidence is mounting against this crew.
Be careful - do not get caught on the wrong side of this conflict.
<center>/\/\/\ TRANSMISSION ENDED \\\\\\</center>
-> END