LIST Answers = Zero=0, Two=2, Four=4, Six=6, Eight=8, Ten=10, Twelve=12, Fourteen=14, Sixteen=16, Eighteen=18, Twenty=20

LIST Dice = One, Two, Three, Four, Five, Six

VAR ThrowText = ""
VAR ThrowValue = Zero

-> init

=== init

«Tout ce que je peux te dire, vous annonce l'homme qui vient de lancer à vos pieds les 5 dés, c'est le nom de ce jeu et que la réponse est toujours paire. Je peux également te donner la réponse à autant de lancers que tu le désires. »


-(opts)
* – Et, moi, que suis-je sensé faire ?
– Si tu me donnes 6 fois de suite la bonne réponse, je considèrerais que tu as compris. Et je m'en irais.
* – Quel est le nom du jeu ?
– Les Pétales de la Rose. Et le nom est important.

* – Et si je ne trouve pas ?
– Même <a href="http://www.borrett.id.au/computing/petals-bg.htm" target="_blank">Bill Gates a trouvé</a>...

* – C'est parti...
    ->play
* ->play
-
-> opts


===play

L'homme lance les cinq dés devant vous :
~ThrowText = throw("", 6)
{ThrowText}


<-listAnswersForValue(ThrowValue, (), ->next)
+ Il n'y a pas la réponse que je veux...
    Pourtant, c'était {LIST_VALUE(ThrowValue)}.
    ->lose->next_round
+ Franchement, je sais pas...
    La réponse était {LIST_VALUE(ThrowValue)}.
    ->lose->next_round

=next(v)
Vous dîtes {LIST_VALUE(v)}

{v == ThrowValue:
        
        ->win->
    -else:
        – Dommage, la réponse était {LIST_VALUE(ThrowValue)}.
        ->lose->
}

-(next_round)

<> Je relance.
+[Continuer]
->play

VAR strike = 0
= win
~strike++
{strike:
    -1: – Super, c'était au hasard ?
    -2: – Deux d'affilés...
    -3: – Et de trois...
    -4: – J'ai l'impression que vous avez compris le principe...
    -5: – On est à cinq. Encore un et on est bon.
    -6: – Eh bien je crois que c'est bon, vous l'avez, je vous laisse transmettre la bonne parole de l'Ordre des Pétales de la Rose.
        <em>L'homme vous salue, reprend ses dés et s'éloigne.</em>
        ->END
}
->->

= lose
{strike:
    -0: –
    -5: – C'est dommage, on y était presque
    -else: – Vous étiez à {strike}, on repart de 0.
}
~strike = 0

->->


=== function value_of(d)
    {d:
        - Dice.Three: ~return 2
        - Dice.Five: ~return 4
        - else: ~return 0
    
    }

=== function img_of(d)
    <img src="{LIST_VALUE(d)}.jpg" style="width:32px;height:32px;display: inline-block">
    // {LIST_VALUE(d)}.jpg

===function throw(text, n)
~temp d = LIST_RANDOM(LIST_ALL(Dice))

{n:
    - 6: 
        ~ThrowValue = Zero
        ~return throw("", 5)
    - 0: ~return text
    - else: 
        ~ThrowValue += value_of(d)
        ~text += "{img_of(d)}"
        ~return throw(text, n-1)
        
}


=== listAnswersForValue(value, acc, ->next)
    ~ temp current_ctc = LIST_RANDOM(LIST_ALL(Answers) - acc)
    {(LIST_COUNT(acc) == 2 || RANDOM(0,3) == 1) && acc hasnt value:
        ~ current_ctc = value 
    }
    
    { LIST_COUNT(acc) < 3:
        <- listAnswersForValue(value, acc + current_ctc, next)
        + [Je pense que c'est {LIST_VALUE(current_ctc)}]
            -> next(current_ctc)
    } 
    


