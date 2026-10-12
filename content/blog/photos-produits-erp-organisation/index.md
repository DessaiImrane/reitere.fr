---
title: "Photos produits ERP : arrête de les chercher sur WhatsApp"
description: "Photos produits ERP : une règle de nommage, un seul dossier et un lien avec la fiche article. Les 3 étapes, avec des cas chiffrés."
date: 2026-10-12
draft: false
tags: ["photos produits", "catalogue", "logiciel de gestion", "organisation"]
categories: ["how-to"]
keywords: ["photos produits ERP organisation", "photos articles catalogue grossiste", "renommer photos référence article", "photos fournisseurs logiciel de gestion"]
author: "Imrane Dessai"
showAuthor: true
showReadingTime: true
featureImageAlt: "Bureau sombre avec un téléphone qui photographie un article et une fiche article du logiciel de gestion qui reçoit la photo"
pipeline:
  nl_statut: "pause"
  nl_date: ""
  fb_statut: "prêt"
  fb_posts: 5
faq:
  - q: "Comment organiser les photos produits dans un ERP ?"
    a: "Une règle : le nom du fichier est la référence de l'article. Un seul dossier d'arrivée, et un programme qui rattache chaque photo à la bonne fiche dans le logiciel de gestion."
  - q: "Un ERP, c'est quoi, et pourquoi il ne range pas mes photos ?"
    a: "L'ERP, c'est ton logiciel de gestion (Sage, Cegid, AS400...). Il stocke les articles, pas les fichiers : sans lien explicite entre une photo et une référence, elle reste dans un dossier à côté."
  - q: "Comment renommer des centaines de photos avec la référence article ?"
    a: "À la main, c'est des heures. Un programme qui lit le code de l'article (ou la photo prise depuis la fiche) renomme et classe sans que personne ne touche aux fichiers."
  - q: "Peut-on mettre plusieurs photos par article dans le logiciel de gestion ?"
    a: "Souvent non en standard. Chez un client, c'est impossible en standard et la demande d'import massif attend l'éditeur depuis des mois. On contourne avec un petit programme à côté."
  - q: "Sur une base type, combien d'articles n'ont pas de photo ?"
    a: "Sur une base type que j'ai utilisée en démonstration, 70 % des articles n'avaient pas de photo. Ce n'est pas une moyenne, mais chez un importateur, c'est souvent une grande partie du catalogue, et personne ne sait exactement laquelle."
---

Pour organiser tes photos produits dans ton ERP (ton logiciel de gestion), il faut trois choses : le nom du fichier est la référence de l'article, toutes les photos arrivent au même endroit, et un programme les rattache à la bonne fiche. Sans ça, ton équipe cherche chaque photo à la main, à chaque fois.

Tes photos sont sur le téléphone d'un commercial, dans un dossier "Asie" et dans 40 mails. Aucune n'est dans le logiciel.

![Bureau sombre avec un téléphone qui photographie un article et une fiche article du logiciel de gestion qui reçoit la photo](feature.webp)

## "La photo, elle doit être quelque part" : le vrai coût de la recherche

Le commercial prépare sa proposition. Il lui faut la photo de l'article. Elle est dans un mail, dans un dossier fournisseur, ou sur le téléphone de quelqu'un.

Chez un importateur-grossiste, 120 conteneurs par an, il y a deux dossiers. Un dossier fournisseur, et un dossier des commerciaux, alimenté par l'application de leur tablette. Aucun des deux n'est lié à la fiche article. Beaucoup d'articles n'ont aucune photo, et retrouver celle d'un article qui en a une, c'est fouiller les deux dossiers.

**Une photo qui n'est pas rattachée à une référence n'existe pas.** Elle est juste quelque part.

## Étape 1 : une règle de nommage, une seule

La règle tient en une phrase : le nom du fichier, c'est la référence de l'article dans le logiciel. Pas "IMG_4523", pas "photo finale2".

Dans une enseigne retail avec deux points de vente, les photos fournisseurs arrivaient par mail. Elles étaient classées à la main dans des dossiers "Asie" et "Europe", puis renommées avec le code article avant d'être déposées dans le logiciel. Tout ça à la main, photo par photo.

- Un code article, un nom de fichier
- Aucune photo renommée à la main si le programme peut le faire
- Une extension et une taille fixées une fois

Ce qui marche : décider de la règle avant de toucher aux fichiers, pas après. Renommer 800 photos une fois est possible. Les renommer tous les mois parce que la règle change, non.

## Étape 2 : un seul endroit où tout arrive

Deux dossiers qui se croisent, c'est le point de départ de tous les problèmes. La deuxième étape, c'est un dossier d'arrivée unique : "À traiter" quand la photo entre, "Traité" quand elle est rattachée.

Pour cette même enseigne, le circuit prévu : boîte de réception, dossier "À traiter", un script qui renomme et dépose dans le logiciel, puis dossier "Traité". L'objectif : plus personne ne se demande où chercher, puisqu'il n'y a plus qu'une porte d'entrée.

Le même principe vaut pour les catalogues. Dans cette enseigne, l'acheteuse produit 2 catalogues papier par mois, 2 jours pleins chacun, soit 4 jours par mois. Une partie du temps part à retrouver les images reçues par mail en deux lots, puis à réécrire titres et descriptions, même pour des références déjà traitées. Un dossier partagé nommé par référence remplace les mails, et les textes sont générés depuis les caractéristiques du produit. Le programme qui prépare le catalogue est en service depuis mai 2026.

**Un catalogue refait à la main tous les mois, ce n'est pas du travail éditorial. C'est de la manutention.** Et pour les [process que ton équipe compense en silence](/blog/process-invisibles-pme/), celui-là est souvent le premier à sortir.

## Étape 3 : un programme qui associe la photo à la fiche

Le nommage et le dossier règlent le désordre. Le gain de temps vient du troisième geste : associer automatiquement.

Chez l'importateur-grossiste, un petit programme (livré en juillet 2026) renomme et associe les photos par référence, avec ou sans bon de livraison. Fini de chercher dans deux dossiers.

Autre piste, plus directe : l'application sur téléphone. Tu cherches l'article, tu le photographies, la photo est associée à la fiche. Pas de fichier à renommer, pas de dossier à choisir. Je l'ai prototypée sur une base type, où 70 % des articles n'avaient pas de photo : la démo est prête, pas encore en service chez un client.

Le contraste est simple. Photographier un article, c'est 10 secondes. Retrouver le code, renommer le fichier, le déposer au bon endroit, c'est le vrai travail. Et c'est celui qu'un programme fait mieux que quelqu'un.

## L'erreur à éviter : attendre que l'éditeur le fasse

Dans la même enseigne, le logiciel de gestion n'accepte qu'une photo par article. Un import massif de photos a été demandé à l'éditeur depuis des mois. Le ticket est toujours en attente.

**Attendre que l'éditeur ajoute la fonction, c'est laisser ton équipe compenser pendant des mois.** Quand le logiciel ne sait pas, on construit à côté : un petit programme (ce que j'appelle un satellite) qui fait ce que le logiciel ne fait pas, sans toucher à son cœur. C'est le même principe que pour [créer les articles depuis la facture fournisseur sans ressaisie](/blog/creer-articles-facture-fournisseur-sans-ressaisie/).

Les spécialistes du sujet font la même distinction : le logiciel qui gère les données produit n'est pas celui qui gère les médias, [comme l'explique Appvizer sur le PIM et le DAM](https://www.appvizer.fr/magazine/operations/pim/pim-dam-definition). Dans une PME réunionnaise, cette séparation existe déjà, simplement sans le nom : un dossier d'un côté, un logiciel de l'autre, et quelqu'un qui fait le facteur entre les deux. Le réflexe inverse, tout gérer dans des fichiers à côté, ne règle rien : c'est [la vraie question entre logiciel métier et Excel](/blog/logiciel-metier-vs-excel-pme/).

Un [audit de poste](/services/optimisation-process/) commence exactement là : on regarde combien de minutes partent à retrouver, renommer, redéposer, avant de proposer quoi que ce soit.

{{< cta title="Tu veux savoir combien de jours par semaine tu peux récupérer ?" button="Répondre à 5 questions" url="/contact/" >}}
Cinq questions sur tes commandes fournisseurs, ta caisse, tes photos ou ta compta, et je te dis ce qui est automatisable chez toi.
{{< /cta >}}
