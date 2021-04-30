---
title: "Courte réflexion sur le design web"
date: "2007-10-25"
---

La plupart du temps, lorsque que je développe un nouveau design pour un site, je le dessine sur une feuille blanche de manière à pouvoir observer un résultat pseudo-final. La suite consiste essentiellement à regarder ce que j'ai fait, non plus avec l'oeil de "l'artiste" mais avec celui du programmeur et à traduire en xhtml+css ce que j'ai bien pu faire. Je mets artiste entre guillemet pour ne pas que l'on m'accuse en commentaire de m'auto-nommer artiste alors que j'inflige parfois au monde des choses absolument immondes (oui, Nicolas, je réfléchis à une nouvelle présentatyon pour [Clyo](http://www.clyo.free.fr/)\[[1](#pnote-616-1)\]). La troisième étape consiste à constater que lorsque je redémarre sous Windows le site s'affiche mal avec Internet Explorer et à corriger cela du mieux que je peux. Ou parfois pas.

La première partie est artistique, donc humaine. La dernière est pseudo-technique et demande aussi le savoir-faire d'un être humain.

La seconde par contre est complètement automatique. Il s'agit de prendre les cadres sur le papier et de les disposer comme il se doit dans la page html puis d'y imposer des contraintes en css pour leur disposition. Je suis donc intimement persuadé qu'un programme devrait être capable de pouvoir faire cela.

Imaginez que cela existe, alors très simplement, je fais un dessin sur ma feuille blanche, je la scanne ou je la prends en photo, je la passe à la moulinette de mon programme d'automatisation et _voilà_, il ne me reste plus qu'à y mettre le texte et les images que je veux. Il me faudra repasser derrière pour rendre mon code sémantiquement correct... sauf si je munis mon programme miracle d'une reconnaissance de texte supplémentaire ! Auquel cas, je peux demander à mon programme de, par exemple, détecter le texte écrit en vert (tout le monde a des bics verts) et d'attribuer ce nom au cadre considéré. Pareil pour les images : ce qui est écrit en rouge souligné, c'est une image. Et ainsi de suite.

Je lance ainsi l'idée, que je ne pourrais malheureusement pas réaliser moi-même, faute d'avoir une quelconque notion de reconnaissance d'image ou de texte (j'aurais du prendre le cours du lundi soir sur l'algorithmie de la vision...)

#### Notes

\[[1](#rev-pnote-616-1)\] et ceci n'est que le premier des liens qui apparaitront périodiquement tandis que nous relancons Ys
