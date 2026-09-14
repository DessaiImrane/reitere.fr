---
title: "Calcul du coût de revient à l'import à La Réunion"
description: "Le calcul du coût de revient à l'import à La Réunion en 3 étapes : lister les frais réels, répartir par la valeur, garder le vrai taux de change."
date: 2026-09-14
draft: false
tags: ["coût de revient", "import", "marge", "Réunion"]
categories: ["how-to"]
keywords: ["calcul coût de revient import Réunion", "octroi de mer coût de revient", "répartir facture transitaire", "marge réelle importateur"]
author: "Imrane Dessai"
showAuthor: true
showReadingTime: true
featureImageAlt: "Bureau sombre avec des factures d'import et une calculatrice, conteneur en arrière-plan"
pipeline:
  nl_statut: "pause"
  nl_date: ""
  fb_statut: "prêt"
  fb_posts: 5
faq:
  - q: "Comment calculer le coût de revient d'un article importé ?"
    a: "Tu additionnes tous les frais réels du conteneur (achat, fret, assurance, douane, octroi de mer, octroi régional, frais bancaires), puis tu répartis cette somme sur chaque article au prorata de sa valeur, jamais à parts égales."
  - q: "C'est quoi le PUMP en comptabilité import ?"
    a: "Le PUMP, prix unitaire moyen pondéré, c'est le coût moyen d'un article quand plusieurs lots arrivent à des prix ou des taux de change différents. Sans coût de revient réel par conteneur, ton PUMP est calculé sur une base fausse dès le départ."
  - q: "Comment répartir l'octroi de mer entre les articles d'un conteneur ?"
    a: "Au prorata de la valeur de chaque ligne de commande, pas du nombre de commandes ni du nombre de colis. Un article à 800 € porte une part de frais proportionnelle à sa valeur, pas la même part qu'un article à 3 €."
  - q: "Pourquoi diviser la facture du transitaire par le nombre de commandes est faux ?"
    a: "Parce que ça fait porter le même montant de frais à un article cher et à un article bon marché. Le vase à 3 € paie autant que le canapé à 800 €, et ta marge réelle sur chacun devient invisible."
  - q: "Faut-il changer de logiciel de gestion pour calculer son coût de revient ?"
    a: "Non. Sage, Cegid, un AS400 ou même Excel peuvent porter ce calcul, à condition de le construire une fois correctement plutôt que de le refaire à la main à chaque conteneur."
---

Le coût de revient à l'import se calcule en additionnant tous les frais réels d'un conteneur (achat, fret, assurance, douane, octroi de mer, octroi régional, frais bancaires), puis en répartissant cette somme au prorata de la valeur de chaque article. À La Réunion, la plupart des boîtes qui importent s'arrêtent avant ce calcul, et ne savent jamais si elles gagnent de l'argent sur tel article ou sur tel autre.

La facture du transitaire, tu la divises par le nombre de commandes dans le conteneur. Le vase à 3 € porte les mêmes frais que le canapé à 800 €. C'est la méthode la plus répandue à La Réunion. C'est aussi la plus fausse.

![Bureau sombre avec des factures d'import et une calculatrice, conteneur en arrière-plan](feature.webp)

## Les 7 lignes d'un coût de revient réunionnais

Un coût de revient import qui tient la route additionne le prix d'achat fournisseur, le fret jusqu'au port, l'assurance transport, les droits de douane, l'octroi de mer, l'octroi de mer régional, et les frais bancaires liés au change. Sept lignes. Beaucoup d'Excel réunionnais n'en ont qu'une : la facture fournisseur, parfois grossie d'un pourcentage forfaitaire pour "les frais".

Une épicerie fine qui importe, 3 000 références et 50 fournisseurs, n'avait aucun calcul à ce niveau avant qu'on regarde le sujet avec elle. Sa phrase : "pas de calcul à ce niveau, je suis encore en galère à des niveaux plus simples." La facture du transitaire (fret, assurance, douane, octroi de mer, octroi régional, dédouanement, manutention, stockage) était divisée par le nombre de commandes du conteneur. Un calcul rapide, qui ne dit rien de la marge réelle sur chaque référence.

## Étape 1 : lister tous les frais réels du conteneur, pas juste la facture fournisseur

Avant de répartir quoi que ce soit, il faut réunir toutes les factures liées à un même conteneur : facture fournisseur, facture transitaire, avis de douane, relevé de change bancaire. Dans un magasin de meubles avec deux points de vente, sur AS400, ce récapitulatif se faisait à la main : extraire les infos du transitaire, traiter les mails de dédouanement (formatés différemment selon le transitaire), suivre les acomptes déjà versés. Un jour de travail par semaine, pour une seule personne.

**Sans la liste complète des frais réels, tout calcul de marge en aval est faux, quel que soit le logiciel qui l'exécute.**

## Étape 2 : répartir au prorata de la valeur, jamais par nombre de commandes

Une fois la somme des frais annexes connue, il reste à la répartir sur chaque article du conteneur. La bonne clé, c'est la valeur de chaque ligne de commande, pas le nombre de commandes ni le nombre de colis.

Dans le même magasin de meubles, ce calcul se faisait à la main, après coup, à chaque conteneur : impressions papier, traits au stylo pour scinder les traites, recalculs ligne par ligne, plusieurs factures recréées dans l'AS400 avec les mêmes informations retapées. Le calcul existait. Mais personne n'avait le temps de le refaire pour vérifier une marge une fois la commande déjà passée.

## Étape 3 : garder le taux de change réel, facture par facture

Le taux de change n'est jamais connu au moment de la commande. Il l'est seulement après paiement, et les frais bancaires liés varient d'une facture à l'autre. Si ton coût de revient utilise un taux moyen ou un taux fixé en début d'année, chaque conteneur payé à un taux différent fausse ta marge réelle sans que tu le voies.

La bonne pratique : stocker le taux de change effectif de chaque facture au moment du paiement, pas une estimation. C'est ce qui manquait à l'épicerie fine citée plus haut, et c'est ce qu'on met en place avec elle : un prorata de la valeur pour répartir les frais du conteneur, et un taux de change réel conservé facture par facture.

## L'erreur qui coûte le plus cher : ne rien calculer du tout

La pire situation n'est pas un mauvais calcul de coût de revient. C'est l'absence totale de calcul. La dirigeante de cette épicerie fine regarde un seul chiffre chaque matin : le solde de sa banque. Pas sa marge brute réelle, pas les produits à mettre en promotion, pas le nombre de ventes de la veille. Ces trois informations, elle voudrait les voir chaque lundi matin. Aujourd'hui, aucun tableau de bord ne les lui donne.

**Tu ne sais pas si tu gagnes de l'argent sur un conteneur tant que personne n'a calculé son coût de revient réel.**

Ce calcul n'a pas besoin d'un nouveau logiciel de gestion pour exister. [Sage, Cegid, un AS400 ou même Excel](/blog/logiciel-metier-vs-excel-pme/) peuvent le porter, à condition de le construire une fois correctement plutôt que de le refaire à la main à chaque conteneur.

Si le sujet te pousse à te demander si ton logiciel actuel est capable de le faire, [cet article sur le choix d'un logiciel de gestion](/blog/choisir-logiciel-gestion-pme/) pose les bonnes questions avant de changer quoi que ce soit.

Structurer ce calcul, c'est aussi le rôle d'un [audit de process ciblé](/services/optimisation-process/) : je regarde comment ton coût de revient se calcule aujourd'hui, poste par poste, avant de te proposer quoi que ce soit.

D'après [Le Moci](https://www.lemoci.com/actualites/secteurs/11-calculer-un-cout-de-revient-import-previsionnel/), la méthode standard répartit le fret et les frais annexes au prorata du volume ou de la valeur de chaque référence, jamais à parts égales entre les commandes. C'est la même logique, sans les lignes propres à La Réunion : l'octroi de mer et l'octroi de mer régional.

{{< cta title="Tu veux savoir combien de jours par semaine tu peux récupérer ?" button="Répondre à 5 questions" url="/contact/" >}}
Cinq questions sur tes commandes fournisseurs, ta caisse ou ta compta, et je te dis ce qui est automatisable chez toi.
{{< /cta >}}
