---
title: "Mathématiques linguistiques"
date: "2005-10-13"
---

Soit (G, x) le groupe engendré par les 26 lettres de l'alphabet G = <a,b,c,...,y,z>

Ca signifie, en particulier, que il existe une lettre λ telle que λa = 1 et que a1 = a ; et ainsi de suite pour toutes les lettres de l'alphabet : ça veut dire que si on a éventuellement utyi = utvo alors yi=vo (on peut simplifier si les lettres sont du même "côté")

Soit D un sous-groupe distingué de G (c'est à dire que si l'on prend une lettre appartenant à G (par exemple α) et une autre qui appartient à D (par exemple δ) alors on a toujours un δ' tels que αδ = δ'α et quand on fait des calculs, on a donc le droit de noter αD = Dα)(et si vous avez pas tout compris, aucune importance, je vous assure que cette dernière égalité est vraie, c'est la définition de "sous-groupe distingué").

Précisons que de manière générale si δ est dans D, alors δD = D (et réciproquement)

On va préciser un peu plus ce qu'est D :  
On dira que si 2 éléments de G s'écrivent comme produit des générateurs (ils forment un mot composé des 26 lettres (par exemple "bonjour")) et qu'ils sont homophones, alors ces deux "mots" sont équivalent modulo D. ce qui signifie que si deux mots se prononcent de la même manière alors on a mot1D = mot2D.

On déclare que en français, alors on a D=G (et d'après mon prof, ce serait faux en italien qui est une langue où la variation de son entre les mots est beaucoup plus importante que dans notre langue. A essayer en anglais.)

Prenons par exemple :

aire et aire. Ces deux mots se prononcent pareils. Donc on peut les écrire aireD=airD. On simplifie alors par a, puis i, puis r. On obtient eD=D donc e est dans D. Il ne nous reste plus qu'à le prouver pour les 25 autres lettres !

ere et air. Ces deux mots se prononcent pareils. Donc on peut les écrire ereD = airD. Comme e estdans D, on peut écrire erD=airD. Comme D est distingué, on peut écrire (er)D = D(er) et comme e est toujours dans D, on a Der = Dr. Et donc Dr = airD = Dair. On simplifie par r et on a aiD=D. Donc ai appartient à D. Ca ne nous apporte rien dans l'immédiat. Mais voyons la suite.

mais et mets. Ces deux mots se prononcent pareils. Donc on peut les écrire maisD=metsD. On simplifie par m et on a : aisD = etsD. Comme D est distingué, on a Dais = Dets. On simplifie par s et on a Dai = Det. On sait que e est dans D, donc on a : Dai = Dt. Mais on sait aussi d'après le paragraphe précédent que ai est dans D. Donc Dai = D = Dt. Et donc t est dans D. Hop, encore une.

A vous de poursuivre, en français ou dans une autre langue !
