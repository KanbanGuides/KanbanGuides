---
title: Le Guide Kanban (mai 2025)
description: Le Guide Kanban est la référence officielle et minimale pour le Kanban. Clair, stable et axé, il définit les pratiques et principes fondamentaux pour gérer le flux et améliorer la livraison dans tous les secteurs industriels.
date: 2025-05-01T09:00:00Z
version: 2025.5
keywords:
  - Kanban
author:
  - John Coleman
  - Daniel Vacanti
type: guide
mainfont: "Times New Roman"
sansfont: "Arial"
monofont: "Courier New"
sitemap:
  priority: 0.6
guide_whatis:  
  Ce document vise à être une référence unificatrice pour la communauté en offrant des directives minimales pour le Kanban. Selon le contexte, diverses approches peuvent compléter le Kanban, lui permettant de couvrir l'ensemble du spectre de la livraison de valeur et des défis organisationnels.

  Ce guide utilise des conventions pour certains termes. Elles ne sont pas destinées à remplacer d'autres définitions existantes, mais à clarifier comment elles doivent être appliquées ici.
aliases:
  - /le-guide-kanban/derniere-version
---

## Préface

Mai 2025

Ce document vise à être une référence unificatrice pour la communauté en offrant des directives minimales pour le Kanban. Selon le contexte, diverses approches peuvent compléter le Kanban, lui permettant de couvrir l'ensemble du spectre de la livraison de valeur et des défis organisationnels.

Ce guide utilise des conventions pour certains termes. Elles ne sont pas destinées à remplacer d'autres définitions existantes, mais à clarifier comment elles doivent être appliquées ici.

### Conventions utilisées

**Kanban ou Système Kanban** : L'ensemble holistique de concepts dans ce guide — spécifiquement en ce qui concerne le travail de connaissance.

**Partie prenante** : Une entité, un individu ou un groupe responsable de, intéressé par ou affecté par les entrées, activités et résultats du système Kanban.

**Valeur** : Un bénéfice potentiel ou réalisé pour une partie prenante. Exemples : répondre aux besoins du client, de l'utilisateur final, de l'organisation et de l'environnement.

**Visualiser, visualisation** : Toute méthode pour transmettre des idées de manière efficace, y compris la clarification conceptuelle, pas nécessairement uniquement visuelle.

**Risque** : La possibilité qu'un événement indésirable se produise.

© 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc.

Cette publication est proposée sous licence _Attribution ShareAlike license of Creative Commons_, accessible à l'adresse [http://creativecommons.org/licenses/by-sa/4.0/legalcode](http://creativecommons.org/licenses/by-sa/4.0/legalcode) et également décrite sous forme résumée à l'adresse [http://creativecommons.org/licenses/by-sa/4.0/](http://creativecommons.org/licenses/by-sa/4.0/). En utilisant ce Guide Kanban, vous reconnaissez avoir lu et accepté d'être lié par les termes de la licence dans les conditions de _the Attribution ShareAlike license of Creative Commons_.

---  

## Définition du Kanban

Kanban est une stratégie pour optimiser le flux de valeur à travers un processus. Il comprend les trois pratiques suivantes, fonctionnant en tandem :

- Définir et visualiser un flux de travail
- Gérer activement les éléments dans un flux de travail
- Améliorer un flux de travail

Dans leur mise en œuvre, ces pratiques Kanban sont collectivement appelées **système Kanban**. Ceux qui participent à la livraison de valeur d'un système Kanban sont appelés **membres du système Kanban**.

## Pourquoi utiliser Kanban ?

Au cœur de la définition du Kanban se trouve le concept de **flux**. Le flux est le mouvement de la valeur potentielle à travers un système. Comme la plupart des flux de travail existent pour optimiser la valeur, la stratégie du Kanban est d'optimiser la valeur en optimisant le flux.
L'optimisation de la valeur signifie s'efforcer de trouver le bon équilibre entre **efficacité**, **efficience** et **prévisibilité** :

- Un flux de travail **efficace** livre ce que les parties prenantes veulent, quand elles le veulent.
- Un flux de travail **efficient** alloue les ressources économiques disponibles de manière aussi optimale que possible pour livrer de la valeur.
- Un flux de travail **prévisible** signifie pouvoir prévoir avec précision la livraison de valeur dans un degré acceptable d'incertitude.

La stratégie du Kanban est d'amener les membres du système Kanban à poser les bonnes questions plus tôt, dans le cadre d'un effort d'amélioration continue en quête de ces objectifs. Les membres du système Kanban doivent viser un équilibre durable entre ces trois éléments. En fin de compte, la stratégie du Kanban est de vous aider à comprendre les compromis et à gérer les risques.

Comme le Kanban peut fonctionner avec pratiquement n'importe quel flux de travail, son application n'est pas limitée à un secteur ou un contexte spécifique. Les travailleurs du savoir professionnels dans la finance, les services publics, la santé et le logiciel (pour n'en nommer que quelques-uns) ont bénéficié des pratiques Kanban. Le Kanban peut être utilisé à toute échelle et dans la plupart des contextes où de la valeur est livrée.


## Théorie du Kanban

Le Kanban s'appuie sur des théories établies du flux, y compris, mais sans s'y limiter, la **pensée systémique**, les **principes lean**, la **théorie des files d'attente** (taille des lots et taille des files), la **variation** et le **contrôle qualité**. Améliorer en continu un système Kanban sur la base de ces théories est une façon pour les organisations de tenter d'optimiser la livraison de valeur.

De nombreuses approches existantes axées sur la valeur partagent la théorie sur laquelle le Kanban est basé. En raison de ces similitudes, le Kanban peut et doit être utilisé pour compléter ces techniques de livraison.

## Pratiques Kanban

### Définir et visualiser le flux de travail

Optimiser le flux nécessite de définir ce que signifie le flux dans un contexte donné. La compréhension explicite et partagée du flux parmi les membres du système Kanban dans leur contexte est appelée une Définition du Flux de Travail (DoW).C'est un concept fondamental du Kanban. Tous les autres éléments de ce guide dépendent largement de la manière dont le flux de travail est défini.

Au minimum, les membres du système Kanban doivent créer leur DoW en utilisant **tous** les éléments suivants :

1. Une définition des **unités individuelles de valeur** qui se déplacent à travers le flux de travail. Ces unités de valeur sont appelées **éléments de travail** (ou *items*).
2. Une définition pour savoir **quand les éléments de travail sont démarrés et terminés** dans le flux de travail. Selon l'élément de travail, votre flux peut avoir plus d'un point de démarrage ou de fin.
3. **Un ou plusieurs états définis** par lesquels les éléments de travail passent de *démarré* à *terminé*. Tout élément de travail entre un point de démarrage et un point de fin est considéré comme **Travail en cours (WIP)**.
4. Une définition de la manière dont le **WIP sera contrôlé** de *démarré* à *terminé*.
5. Des **politiques explicites** sur la manière dont les éléments de travail peuvent circuler à travers chaque état, de *démarré* à *terminé*.
6. Une **attente de niveau de service (SLE)**, qui est une prévision du temps qu'il devrait prendre à un élément de travail pour circuler de *démarré* à *terminé*. La SLE elle-même comprend deux parties : une période de temps écoulé et une probabilité associée à cette période (par exemple, *"85 % des éléments de travail seront terminés en huit jours ou moins"*). La SLE doit être basée sur le **temps de cycle historique** et, une fois calculée, doit être visualisée sur le DoW. Si les données historiques de temps de cycle n'existent pas, une estimation raisonnable suffira jusqu'à ce qu'il y ait suffisamment de données historiques pour un calcul approprié de la SLE.

L'ordre dans lequel ces éléments sont mis en œuvre n'a pas d'importance, tant qu'ils sont tous adoptés.

Les membres du système Kanban ont souvent besoin d'éléments supplémentaires de DoW, tels que des valeurs, des principes et des accords de travail, en fonction des circonstances des membres du système Kanban. Les options varient, et il existe des ressources au-delà de ce guide qui peuvent aider à décider lesquels incorporer.

Les membres du système Kanban ont également souvent besoin de plusieurs DoW. Ces multiples DoW peuvent concerner plusieurs groupes de membres du système Kanban, différents niveaux de l'organisation, etc. Bien que ce guide ne prescrive aucun nombre minimum ou maximum de DoW, il encourage l'établissement d'une DoW partout où les membres du système Kanban ont besoin de connecter le flux à la **réalisation de la valeur**.

La **Visualisation d'un Flux de Travail** (Dow) est un **tableau Kanban**. Rendre au moins les éléments minimaux d'un Flux de Travail transparents sur un tableau Kanban est essentiel pour traiter les connaissances qui informent le fonctionnement optimal du flux de travail et facilite l'amélioration continue.

Il n'y a pas de directives spécifiques sur la manière dont une visualisation doit apparaître. Une attention doit être portée à tous les aspects d'un Flux de Travail (par exemple, éléments de travail, politiques) ainsi qu'à tout autre facteur spécifique au contexte qui peut affecter la manière dont la valeur circule. Les membres du système Kanban ne sont limités que par leur imagination quant à la manière dont ils rendent le flux transparent.

### Gérer activement les éléments dans un flux de travail

Les éléments dans le flux de travail doivent être gérés activement. La gestion active des éléments dans un flux de travail peut prendre plusieurs formes, y compris, mais sans s'y limiter :

- **Contrôler le WIP**.
- S'assurer que les éléments de travail ne vieillissent pas inutilement, en utilisant la SLE comme référence.
- Débloquer les éléments de travail bloqués.

Une pratique courante consiste pour les membres du système Kanban à **examiner régulièrement les éléments actifs**. Cet examen peut se faire en continu, à intervalles réguliers, ou par une combinaison des deux.

Les membres du système Kanban **doivent explicitement contrôler le nombre d'éléments de travail** dans un flux de travail, de *démarré* à *terminé*. Ce contrôle peut être représenté sur un tableau Kanban de toute manière que les membres du système Kanban jugent appropriée. Idéalement, le système fonctionnerait ni au-dessus ni en dessous du contrôle convenu.

Un effet du contrôle du WIP  est qu'il devrait créer un **système de tirage** (*pull system*) ; les membres du système Kanban ne devraient **démarrer le travail sur un élément** (tirer ou sélectionner) que lorsqu'il y a un signal clair qu'il y a la capacité de le faire. Lorsque le WIP descend en dessous du contrôle défini dans le DoW, cela peut être un signal pour sélectionner un nouveau travail. Les membres du système Kanban devraient s'abstenir de sélectionner plus d'éléments de travail dans une partie donnée du flux de travail au-delà du contrôle du WIP.

Contrôler le WIP aide le flux et améliore souvent **la concentration collective, l'engagement et la collaboration** des membres du système Kanban. Toute exception acceptable au contrôle du WIP doit être rendue explicite dans le cadre du DoW.

### Améliorer le flux de travail

Étant donnée une **Définition explicite du Flux de Travail**, la responsabilité des membres du système Kanban est d'**améliorer en continu leur flux de travail** pour atteindre un meilleur équilibre entre efficacité, efficience et prévisibilité. Une étude continue du système peut guider les améliorations potentielles du DoW.

Il est courant de **réexaminer le DoW de temps en temps** pour discuter et mettre en œuvre les changements nécessaires. Cependant, il n'est pas obligatoire d'attendre une réunion formelle à un rythme régulier pour apporter ces changements. Les membres du système Kanban peuvent et doivent apporter des modifications **juste-à-temps** comme le dicte le contexte. Il n'y a rien non plus qui prescrive que les améliorations du flux de travail doivent être petites ou incrémentielles. Si les membres du système Kanban estiment qu'un changement significatif est nécessaire, c'est ce qu'ils doivent mettre en œuvre.

## Métriques de flux

L'application du Kanban nécessite de **collecter et analyser un ensemble minimal de métriques de flux**. Elles reflètent la santé et la performance actuelles du système Kanban et aideront à éclairer les décisions sur la manière dont la valeur est livrée. Les **quatre métriques de flux obligatoires** à suivre dans le Kanban sont :

- **WIP** : Le nombre d'éléments de travail démarrés mais non terminés.
- **Débit** (*Throughput*) : Le nombre d'éléments de travail terminés par unité de temps. Notez que la mesure du débit est le **compte exact** des éléments de travail.
- **Âge des éléments de travail** (*Work Item Age*) : Le temps écoulé entre le moment où un élément de travail a démarré et la date actuelle.
- **Temps de cycle** (*Cycle Time*) : Le temps écoulé entre le moment où un élément de travail a démarré et le moment où il a été terminé.

À condition que les membres du système Kanban utilisent ces métriques comme décrit dans ce guide, ils peuvent désigner chacune de ces mesures par tout autre nom de leur choix (par exemple, *Temps de cycle* pourrait être *Temps de flux*, *Débit* pourrait être *Taux de livraison*, etc.).

Pour ces quatre métriques de flux obligatoires, *démarré* et *terminé* font référence à la manière dont les membres du système Kanban ont établi ces points dans leur DoW.

En elles-mêmes, ces métriques n'ont aucun sens à moins qu'elles ne puissent éclairer une ou plusieurs des trois pratiques Kanban. Il appartient aux membres du système Kanban de décider comment tirer le meilleur parti de ces métriques (par exemple, les visualiser dans des graphiques, évaluer la variation, etc.).

Les métriques de flux énumérées dans ce guide représentent **uniquement le minimum requis** pour faire fonctionner un système Kanban. Les membres du système Kanban peuvent et doivent souvent utiliser des **mesures supplémentaires spécifiques au contexte** qui aident à prendre des décisions éclairées par les données.


## Note finale

On peut et on devrait probablement ajouter d'autres principes, méthodologies et techniques au système Kanban. Cependant, **l'ensemble minimal de pratiques, de métriques et l'esprit d'optimisation de la valeur doivent être préservés**.


## Histoire du Kanban

L'état actuel du Kanban peut être retracé jusqu'au **Toyota Production System** (et ses prédécesseurs) ainsi qu'aux travaux de personnes comme **Taiichi Ohno** et **W. Edwards Deming**. L'ensemble des pratiques pour le travail intellectuel, aujourd'hui communément appelé Kanban, trouve principalement son origine dans une équipe chez **Corbis en 2006**. Ces pratiques se sont rapidement répandues pour englober une grande et diverse communauté internationale qui a continué à enrichir et faire évoluer cette approche.


## Remerciements

En plus de tous ceux qui ont contribué au développement du Kanban au fil des ans, nous tenons à remercier spécifiquement les personnes suivantes pour leurs contributions à ce guide :

Emily Coleman pour son inspiration dans l'élargissement de la définition de la valeur.
Julia Wester, Colleen Johnson, Prateek Singh, Christian Neverdal, Magdalena Firlit, Tom Gilb et Steve Tendon pour leurs revues perspicaces des premières ébauches.

### Adaptations 2025

Pour clarifier l'intention, des conventions ont été ajoutées pour :

- Kanban, système Kanban, partie prenante, valeur, risque, visualiser et visualisation
- La réalisation de la valeur peut concerner les parties prenantes, y compris, mais sans s'y limiter, les clients
- Définition simplifiée du Kanban, spécifiquement en ce qui concerne le travail intellectuel
- L'Attente de Niveau de Service (SLE) a été déplacée dans la section Définition du Flux de Travail
- Moins explicite (et donc plus flexible) sur la manière dont le WIP est contrôlé
- Plus explicite sur les multiples DoW, la variation, et la connexion entre le flux et la réalisation de la valeur
- Simplification des trois pratiques, et la sélection (d'éléments) est mentionnée plus souvent
- Les Mesures Kanban renommées en Métriques de Flux
- Plus explicite sur la flexibilité autour des noms des métriques de flux
- Référence à l'immuabilité du Kanban supprimée

## Licence

Ce travail est sous licence de **Orderly Disruption Limited** et **Daniel S. Vacanti, Inc.** sous une **licence Creative Commons Attribution 4.0 International**.