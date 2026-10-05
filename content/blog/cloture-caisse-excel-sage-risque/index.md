---
title: "Clôture caisse Excel Sage : le risque que tu ne vois pas"
description: "Ta clôture caisse Excel Sage tourne avec le compte d'un salarié parti ? Voilà ce qui casse, sans message d'erreur, et les 2 options chiffrées."
date: 2026-10-05
draft: false
tags: ["clôture caisse", "Sage 100", "fichier Excel", "contrôle caisse"]
categories: ["projet-informatique"]
keywords: ["clôture caisse Excel Sage", "fichier Excel connecté Sage risque", "contrôle caisse magasin automatiser", "requête SQL Sage 100 Excel"]
author: "Imrane Dessai"
showAuthor: true
showReadingTime: true
featureImageAlt: "Bureau de magasin sombre avec un fichier Excel de clôture caisse ouvert à côté d'un terminal de paiement"
pipeline:
  nl_statut: "pause"
  nl_date: ""
  fb_statut: "prêt"
  fb_posts: 5
faq:
  - q: "Un fichier Excel peut-il lire directement les données de Sage 100 ?"
    a: "Oui, Excel peut interroger la base de données de Sage 100 avec une connexion dédiée. Ça marche, mais la connexion s'appuie sur un identifiant : si c'est celui d'une personne, le fichier dépend d'elle."
  - q: "Que se passe-t-il si on désactive le compte du salarié parti ?"
    a: "La connexion du fichier à Sage est coupée et la clôture ne se calcule plus. Le piège, c'est que personne ne le sait avant le jour de la clôture."
  - q: "Comment sécuriser un fichier de clôture caisse sans tout refaire ?"
    a: "On crée un compte technique qui n'appartient à personne, on regroupe les deux fichiers en un seul paramétrable, on protège les formules et on documente."
  - q: "Faut-il remplacer Excel par une vraie application pour la clôture caisse ?"
    a: "Quand plusieurs magasins partagent le même fichier, oui : une page web avec des droits par magasin évite les copies et les formules modifiées à la main."
  - q: "Combien de requêtes faut-il pour obtenir une clôture de caisse ?"
    a: "Une clôture, ce sont 4 chiffres : CB, chèques, espèces, factures non réglées. Le fichier audité utilisait 5 requêtes, fusionnables en 2."
---

Un fichier de clôture caisse Excel branché sur Sage fonctionne tant que le compte utilisé pour la connexion existe. Si c'est l'identifiant d'une personne, le jour où elle part et où son compte est désactivé, la clôture ne se calcule plus.

Ton fichier de clôture est branché sur Sage avec l'identifiant d'un salarié parti. Le jour où on désactive son compte, plus de clôture.

![Bureau de magasin sombre avec un fichier Excel de clôture caisse ouvert à côté d'un terminal de paiement](feature.webp)

## "Ça tourne" : le fichier créé en décembre par quelqu'un qui n'est plus là

Le fichier fait le travail depuis des mois. Personne ne se souvient de comment il a été monté. Celui qui l'a monté n'est plus dans la boîte.

C'est ce qu'un intégrateur Sage m'a montré chez un de ses clients, un magasin. Deux fichiers Excel de clôture caisse, un par magasin, branchés directement sur la base de données de Sage 100 avec l'identifiant nominatif d'un salarié parti. Créés en décembre, et encore modifiés à la main en juin. Même modèle dupliqué, formules recopiées à la main, aucune protection.

**Un fichier de clôture qui dépend du compte d'une personne n'est pas un outil. C'est une bombe à retardement avec un joli tableau.**

Je ne dis pas que c'est mal fait. Celui qui l'a monté a répondu à un besoin réel, vite. Mais personne ne l'a repris derrière lui.

## Le prénom de la caissière codé en dur dans une cellule

Ce qui sépare les deux magasins dans les requêtes (la question posée à Sage pour sortir un chiffre), c'est un prénom. Celui de la caissière, écrit en dur dans une cellule du fichier.

Conséquence : si elle change de poste, le tableau se vide. Pas de message d'erreur. Pas de case rouge. Juste des zéros, ou rien. Celui qui contrôle la caisse peut croire que la journée était calme.

**Une erreur qui ne fait pas de bruit coûte plus cher qu'une erreur qui plante.**

Ce que ça demande : une table de correspondance entre l'utilisateur et le magasin, dans une vraie page, pas dans une cellule. Chez ce magasin, c'est proposé, pas encore en place.

## 5 requêtes et 2 fichiers pour 4 chiffres

Une clôture de caisse, c'est quatre chiffres : CB, chèques, espèces, factures non réglées. Pour les obtenir, ce magasin a 5 requêtes et 2 fichiers. Elles sont fusionnables en 2 requêtes, sur une seule page.

Ce n'est pas de la finesse technique. C'est ce qui arrive quand on ajoute une requête à chaque nouvelle question, sans jamais retirer l'ancienne.

Ces connexions sont aussi documentées côté éditeur : [Sage a publié une base de connaissance sur les erreurs de connexion du pilote ODBC](https://fr-kb.sage.com/portal/app/portlets/results/viewsolution.jsp?solutionid=211010160106334&page=1&position=1&q=odbc) (le lien entre Excel et la base de Sage). Ce que ces pages ne disent pas : le vrai risque n'est pas le pilote. C'est la personne dont le nom est dans la connexion.

## Deux options

L'intégrateur m'a demandé de regarder ça. J'ai proposé deux options.

- **Option 1 : sécuriser.** Un compte technique dédié (qui n'appartient à personne), un fichier unique paramétrable, une protection des formules, une documentation.
- **Option 2 : remplacer.** Une page web avec des droits par magasin. Plus de copie du fichier, plus de formule modifiée à la main.

La décision n'est pas prise. Mon avis : l'option 1 si tu as un seul magasin et personne qui touche aux formules. L'option 2 dès que deux magasins partagent le même modèle, parce que la copie est ce qui casse.

**Sécuriser un fichier Excel, c'est reculer le problème. Le remplacer, c'est le régler.** Reculer le problème a sa place quand le budget est serré, mais il faut le dire à voix haute.

## Même magasin, même cause : 80 % du poste sur le contrôle CB

Le même magasin a un deuxième problème. Le logiciel de caisse donne les paiements par carte en lignes de détail, sans total. Chaque terminal de paiement sort un ticket résumé par jour et par type de paiement. Le contrôleur caisse reconstitue les totaux à la main, ligne par ligne, pour les comparer.

Résultat : 80 % du temps de son poste passe sur le contrôle CB. Pas parce qu'il est lent. Parce que le logiciel ne sait pas additionner ce qu'il a déjà.

La migration du suivi des règlements vers un outil qui totalise en colonnes est planifiée, avec une comparaison des bas de colonnes qu'on peut scripter. Ce n'est pas encore en production : le diagnostic est posé, le gain reste à mesurer.

C'est le même mécanisme que dans [Excel n'est pas un outil de gestion](/blog/excel-nest-pas-un-outil-de-gestion/) : Excel a comblé un manque du logiciel, personne n'est revenu dessus. Et si tu hésites entre garder ton logiciel et construire à côté, [logiciel métier ou Excel](/blog/logiciel-metier-vs-excel-pme/) pose les critères.

## Ce que ça t'apprend

Trois questions à te poser sur ton propre fichier de clôture :

- Quel identifiant le connecte à Sage, et à qui appartient-il ?
- Que se passe-t-il quand la personne indiquée dans le fichier change de poste ?
- Qui a le droit de modifier une formule, et comment le saurais-tu ?

Si tu n'as pas la réponse à une des trois, ton fichier est dans le même état que celui du magasin ci-dessus. Un [audit de poste](/services/optimisation-process/) commence par ces questions : on s'assoit avec la personne qui fait la clôture et on liste ce qui repose sur quoi.

{{< cta title="Tu veux savoir combien de jours par semaine tu peux récupérer ?" button="Répondre à 5 questions" url="/contact/" >}}
Cinq questions sur ta caisse, ta compta ou tes commandes fournisseurs, et je te dis ce qui est automatisable chez toi.
{{< /cta >}}
