---
title: "Facture fournisseur : créer les articles sans ressaisir"
description: "La saisie des articles depuis une facture fournisseur peut devenir automatique. La méthode en 3 étapes et deux exemples terrain chiffrés."
date: 2026-09-21
draft: false
tags: ["création d'articles", "facture fournisseur", "automatisation achats", "logiciel de gestion"]
categories: ["how-to"]
keywords: ["saisie articles facture fournisseur automatique", "création article ERP depuis PDF", "bon d'achat automatique", "ressaisie facture fournisseur"]
author: "Imrane Dessai"
showAuthor: true
showReadingTime: true
featureImageAlt: "Bureau sombre avec une facture fournisseur PDF à l'écran et une fiche article qui se remplit automatiquement"
pipeline:
  nl_statut: "pause"
  nl_date: ""
  fb_statut: "prêt"
  fb_posts: 5
faq:
  - q: "Comment créer automatiquement un article depuis une facture fournisseur ?"
    a: "Un programme lit le PDF de la facture, reconnaît les champs (référence, libellé, poids, prix) et pré-remplit la fiche article et le bon d'achat dans ton logiciel. Ton acheteuse valide avant que rien ne parte dedans, elle ne retape plus rien."
  - q: "Un système qui lit les factures fournisseurs, c'est de l'intelligence artificielle ?"
    a: "Oui pour la lecture du PDF : reconnaître quel bloc de texte correspond à quel champ, peu importe la mise en page du fournisseur. Le reste, création de l'article, calcul du bon d'achat, est un enchaînement classique, sans IA."
  - q: "Est-ce que ça remplace l'acheteuse ?"
    a: "Non. Elle valide ce qui est proposé avant l'injection dans le logiciel. Ce qui disparaît, c'est la ressaisie ligne par ligne, pas la décision."
  - q: "Ça marche avec quel logiciel de gestion ?"
    a: "Avec tout logiciel qui accepte une injection depuis l'extérieur : import, connexion directe à la base, ou API. Ça a été fait sur un AS400 et sur Sage 100, deux logiciels réputés difficiles à connecter."
  - q: "Combien de temps ça prend à mettre en place ?"
    a: "Ça dépend du nombre de champs à extraire et de la complexité du circuit de prix de vente derrière (remises, arrondis, validation du patron). Le chantier se borne à un process précis, pas à une refonte du logiciel."
---

La saisie des articles depuis une facture fournisseur devient automatique quand un programme lit le PDF, reconnaît chaque champ (référence, libellé, poids, prix) et pré-remplit la fiche article et le bon d'achat dans ton logiciel de gestion. Ton acheteuse valide avant que rien ne parte dedans, elle ne retape plus rien.

Le prix de vente d'un article passe par 5 mains avant d'être saisi. Une des cinq, c'est une imprimante.

![Bureau sombre avec une facture fournisseur PDF à l'écran et une fiche article qui se remplit automatiquement](feature.webp)

## Un conteneur, une demi-journée de saisie

Une facture fournisseur arrive en PDF. Le logiciel de gestion attend les mêmes informations : référence, libellé, poids, prix. Entre les deux, quelqu'un tape.

Dans un magasin de meubles avec deux points de vente, sur AS400, l'acheteuse créait chaque article à la main depuis la facture : le poids, l'éco-mobilier, le libellé, puis elle montait le bon d'achat avec un calcul de remise sur Excel à côté. Un conteneur, c'était une demi-journée de saisie, 2,5 jours par semaine au total. Deux conteneurs traités par jour au mieux, alors que le patron en voulait quatre. Le problème n'était pas l'acheteuse. C'était le nombre de fois où la même information passait d'un écran à un autre, à la main.

## Étape 1 : le programme lit la facture, pas ton acheteuse

La première brique, c'est la lecture du PDF. Un système (ici l'intelligence artificielle sert vraiment, la seule fois où le mot compte dans cet article) reconnaît quel bloc de texte correspond à la référence, au libellé, au poids, au prix d'achat, quelle que soit la mise en page du fournisseur. Il n'y a pas deux factures fournisseurs mises en page pareil, et c'est exactement ce que la lecture automatique encaisse.

Dans le magasin de meubles cité plus haut, ce mécanisme lit la facture, pré-remplit les champs, et propose l'injection directe dans l'AS400. Il est en prod depuis juillet 2026, testé par l'acheteuse elle-même.

Un [comparatif des outils de lecture de facture](https://www.docaposte.com/blog/article/ocr-facture) évoque une précision de plus de 99 % sur des documents de bonne qualité. Ce que ces guides ne disent pas : cette précision sert d'abord la compta, extraire un montant, une TVA, une date. Pas la création d'une fiche article complète avec poids, éco-participation et circuit de prix de vente. C'est là que la plupart des outils du marché s'arrêtent, et que le travail continue à la main.

## Étape 2 : il propose, ton acheteuse valide

Rien ne s'injecte tout seul dans le logiciel. Le système propose une fiche article et un bon d'achat pré-remplis. Ton acheteuse regarde, corrige si besoin, valide. C'est elle qui décide, pas le programme.

**Un système qui lit une facture ne remplace pas ton acheteuse. Il lui rend ses journées.**

C'est cette étape qui change tout par rapport à une automatisation aveugle : si le fournisseur a fait une erreur de référence ou de poids sur sa facture, c'est l'acheteuse qui l'attrape, pas le logiciel.

## Étape 3 : le prix de vente sort sans repasser par l'imprimante

Dans le même magasin, le prix de vente d'un article passait par 5 étapes avant d'être fixé : l'acheteuse exportait les données, le comptable renseignait sa part, l'acheteuse imprimait la liste pour le patron, le patron corrigeait au stylo sur le papier, l'acheteuse ressaisissait chaque article corrigé dans le logiciel. Cinq mains. Une imprimante.

**Cinq mains pour fixer un prix, dont une imprimante, ce n'est pas un contrôle. C'est un circuit qui s'est complexifié sans que personne ne le décide.**

Une fois la création d'article automatisée, ce circuit peut entrer dans le même système : le prix proposé, la marge visible, la validation du patron en ligne, sans papier entre les deux. C'est le chantier suivant, dans le même magasin.

## L'erreur qui garde la ressaisie triple

Automatiser une seule étape ne suffit pas si le reste du circuit garde ses ressaisies. Chez un importateur de meubles et de tapis, 120 conteneurs par an, sur Sage 100, chaque achat demande encore de créer un fichier « carton » à imprimer pour le fournisseur, avec un code EAN calculé dans un Excel séparé puis copié-collé, de ressaisir les mêmes informations dans Sage, puis de recréer le bon de livraison depuis la proforma. Trois saisies de la même donnée, avant même de parler de prix de vente.

**Trois saisies de la même information, ce n'est pas de la rigueur. C'est de la friction qu'on a fini par trouver normale.**

Une dirigeante d'épicerie fine qui importe listait spontanément la création d'articles parmi les tâches à supprimer de son quotidien, avec la gestion des promos. Sa tâche la plus chronophage, disait-elle : « tout, et surtout les mails ». Ce n'est pas un caprice. C'est une tâche qui n'apporte plus rien une fois qu'elle a été bien faite une fois.

Ce chantier ressemble à n'importe quelle [automatisation d'une tâche répétitive](/blog/automatiser-taches-repetitives-pme/) dans une PME. Ce qui change, c'est le point de départ : un PDF que personne ne peut modifier, et un logiciel qui n'accepte que des champs propres. Si tu veux savoir si l'intelligence artificielle a sa place dans ton cas ou si un automate classique suffit, [cet article compare les deux](/blog/automatisation-vs-ia-pme/).

Un [audit de poste ciblé](/services/optimisation-process/) commence exactement comme les exemples ci-dessus : on regarde combien de fois la même information est retapée avant de proposer quoi que ce soit.

{{< cta title="Tu veux savoir combien de jours par semaine tu peux récupérer ?" button="Répondre à 5 questions" url="/contact/" >}}
Cinq questions sur tes commandes fournisseurs, ta caisse ou ta compta, et je te dis ce qui est automatisable chez toi.
{{< /cta >}}
