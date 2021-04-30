---
title: "Héritage ?"
date: "2011-11-22"
---

J'ai un problème récurrent de conception et je ne suis pas sûr d'avoir le vocabulaire technique pour l'exprimer, et donc pour rechercher exactement une solution sur l'internet mondial. Parce que, forcément, quelqu'un a déjà élaboré une solution sympathique pour résoudre ce problème. Problème qui est le suivant :

Je possède une collection d'objet de types différents (des Artiste, des Albums, des Livres, des Utilisateurs etc...) stockés chacun dans sa proble table de données comme il est coutume de faire. À chacune des instances de ces objets, (Britney Spears, Stade 2, The Baroque Cycle, toto01 etc...) je veux pouvoir associer une série de commentaires  dont le format ne dépend pas de l'objet auquel il est attribué : je souhaite stocker _qui_ a commenté, le texte de son commentaire et la date du commentaire. Et évidemment l'association.

Comme ça, c'est simple. Pour faire ça, il y a mille manières. J'en voudrais une qui soit efficace et maligne et qui réponde aux contraintes suivantes : - Je voudrais pouvoir récupérer les _n_ derniers commentaires, des _p_ types tous confondus, et pour chacun toutes les infos de l'objet associé en  un nombre de requêtes ne dépendant de _n_ qu'au plus en o(log _n_), et ne dépendant pas de _p_. - Je voudrais pouvoir récupérer les derniers commentaires d'un objet précis en o(1) requête. - Pareillement pour les derniers commentaires sur un type (max o(1) requête) - Je ne souhaite pas dupliquer mes commentaires. - En Mysql. (hahaha)

Voilà, si quelqu'un a une réponse à cette question qui me chagrine, je la prends aisément. En attendant, je vais continuer avec mes bricolages, mes UNIONs de la mort et mes duplications de commentaires.
