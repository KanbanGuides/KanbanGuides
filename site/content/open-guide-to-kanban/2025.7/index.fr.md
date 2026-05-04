---
title: Guide Ouvert de Kanban - Dans le Contexte du Travail de la Connaissance
short_title: Guide Ouvert de Kanban
description: Le Guide Ouvert de Kanban est une référence gratuite et pilotée par la communauté pour l'application de Kanban dans le travail de la connaissance. Il définit les pratiques fondamentales et les métriques nécessaires pour améliorer le flux, optimiser la livraison de valeur et renforcer la durabilité des équipes. Ce guide soutient les implémentations Kanban évolutives dans divers secteurs et complète les autres approches agiles, lean et basées sur le flux.

keywords:
  - Kanban
  - Guide Ouvert de Kanban
  - travail de la connaissance
  - optimisation du flux
  - limites de travail en cours (WIP)
  - livraison de valeur
  - agile
  - lean
  - amélioration continue
  - attente de niveau de service
  - flux cumulé
  - débit
  - métriques
  - âge des éléments de travail
  - efficacité du flux
  - visualisation
  - travail en cours
  - amélioration des processus
  - tableau Kanban
  - définition du flux de travail
  - livraison axée sur les résultats

author:
  - John Coleman
date: 2025-07-02T09:00:00Z
type: guide
forked_from: the-kanban-guide/2025.5
mainfont: "Times New Roman"
sansfont: "Arial"
monofont: "Courier New"
sitemap:
  priority: 1.0
aliases:
  - /fr/open-guide-to-kanban/latest/
---




Ce travail, Guide Ouvert de Kanban (Open Guide To Kanban), est une
adaptation du [Kanban Guide (May 2025 version)](https://kanbanguides.org/history/kanban-guide-2025/),qui est sous licence Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0). Le guide original est © 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc.. Des modifications ont été apportées à l'original sous licence [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). Les
_parties mises en italique sont © 2025_ Orderly Disruption Limited, sous
licence CC BY-SA 4.0. Tout autre contenu provient de © 2019-2025 Orderly
Disruption Limited, Daniel S. Vacanti, Inc., également sous licence CC
BY-SA 4.0.

## Préface 

Ce document vise à fournir des conseils _ouverts_ et _adaptables_ à votre contexte pour mettre en place Kanban et _la gestion des Flux, en reprenant les idées provenant de diverses communautés_. Il a pour but de servir de référence aux différentes communautés en complément de leur propre contenu. Selon le contexte, diverses approches peuvent venir compléter Kanban, lui permettant de s'adapter aux défis de la production et livraison de Valeur et aux challenges organisationnels actuels.

_L'utilisation de police en italique fait référence à la notice Creative Commons présente sur la page de couverture ; les italiques ne figurent pas pour l'emphase. L'utilisation d'une lettre capitale au début d'un mot indique une l'utilisation d'une convention listée dans l'annexe de ce document, par exemple, la Valeur est un bénéfice potentiel ou avéré pour une Partie Prenante, incluant la satisfaction des besoins du client, de l'utilisateur final, du décideur, de l'organisation et de l'environnement_.

## Définition de Kanban dans le Contexte du Travail de la Connaissance 

Kanban est une stratégie pour optimiser le _Flux_ de _Valeur_ à travers un _système_.C'est un système de visualisation pour demander du Travail ou de l'inventaire. Il comprend les trois pratiques suivantes qui fonctionnent de concert :

- Définir et _Visualiser_ un flux de travail.
- Gérer activement les _Éléments_ dans un flux de travail.
- Améliorer le _Flux_.

Dans leur implémentation, ces pratiques Kanban sont collectivement appelés un système Kanban. Ceux qui participent à la production et livraison de la Valeur d'un système Kanban sont appelés membres du système Kanban.

## Pourquoi utiliser Kanban ?

Pour _comprendre_ Kanban, il faut appréhender le concept de _Flux_. Dans un _système Kanban_, le _Flux_ est le mouvement de la _Valeur_ à travers ce système Kanban. Comme la plupart des flux de travail _Kanban_ existent pour optimiser la _Valeur_, la stratégie de Kanban est d'optimiser la Valeur en optimisant le Flux, ce qui signifie s'efforcer de trouver le bon équilibre entre l'efficacité, l'efficience et la prédictibilité :

- Un flux de travail efficace livre ce que les Parties Prenantes _souhaitent_, lorsqu'elles le _souhaitent_.
- Un flux de travail efficient alloue la _capacité_ disponible de manière optimale, pour livrer de la Valeur.
- Un flux de travail est prévisible s'il permet de prévoir _de manière raisonnable_ la production et livraison de la Valeur, avec un degré d'incertitude acceptable.

La stratégie d'un _système_ Kanban est de _permettre_ aux membres du système Kanban de se poser les bonnes questions au plus tôt, dans le cadre d'un effort d'amélioration continue pour atteindre ces objectifs. Les membres du système Kanban devraient viser un équilibre durable entre ces trois éléments. _Kanban est également un moyen de réduire la surcharge (charge de travail excessive) et de gérer la demande afin que le Travail soit livré de manière optimale, compte tenu de la capacité disponible. Ce n'est pas un système parfait, mais il devrait favoriser l'amélioration continue et un Flux de Valeur optimisé._ 

_Les avantages secondaires sont : des membres du système Kanban plus heureux, une qualité supérieure et la capacité de s'adapter à la demande. Un bon système Kanban est autorégulateur, c'est-à-dire que le système Kanban signale et s'ajuste aux problèmes sans intervention._
Parce que Kanban _peut_ _Visualiser_ pratiquement n'importe quel flux de travail, son application n'est pas limitée à des industries ou des contextes spécifiques. Les professionnels en finance, services publics, santé et logiciels (pour n'en citer que quelques-uns) ont ainsi pu bénéficier des pratiques Kanban. Kanban est applicable dans la plupart des contextes où il faut livrer de la Valeur.

## Théorie de Kanban 

Le _système Kanban_ s'appuie sur _plusieurs approches et leurs déclinaisons_, y compris, mais sans s'y limiter, la pensée systémique _(5)_, les principes Lean _(4)_, la théorie des files d'attente (taille des lots de travaux _(6-7)_ et taille des files d'attente _(1,13-14)_), la variabilité _(2,11)_ et le contrôle qualité _(2,8,10)_. L'amélioration continue d'un système Kanban qui se base sur ces approches et variantes est un moyen pour les organisations d'essayer d'optimiser la production et livraison de Valeur. De nombreuses approches existantes basées sur la _Valeur_ partagent les _idées_ qui sont la base de Kanban. En raison de ces similitudes, Kanban peut être utilisé pour faire progresser toutes les approches visant à améliorer la production et livraison de Valeur.

## Pratiques de Kanban 

### Définir et Visualiser le Flux de Travail

L'optimisation du _Flux_ nécessite de définir ce que
le _Flux_ de _Valeur_ signifie dans un contexte donné, c'est-à-dire le _mouvement (idéalement) le plus fluide permettant la livraison de bénéfices potentiels ou (idéalement) réalisés pour des Parties Prenantes_. La compréhension partagée explicite du Flux entre les membres du système _Kanban_ dans leur contexte est appelée une Définition du Flux de Travail. La _Définition du Flux de Travail_ est un concept fondamental de Kanban. Tous les autres éléments de ce guide dépendent fortement de la façon dont le flux de travail est défini.

_A minima, pour alimenter le fonctionnement optimal du flux de travail et faciliter l'amélioration continue,_ les _membres du système Kanban_ doivent créer leur _Définition du Flux de Travail_ en utilisant l'ensemble des éléments suivants :

1.  Une définition des unités individuelles de Valeur qui se déplacent au travers du flux de travail, appelées _Éléments de Travail_ (ou _Éléments_).
2.  _Selon l'Élément de Travail, pour au moins une paire cohérente de points « commencé » et « terminé »_ :
    - [ ] Un ou plusieurs statuts définis, par lesquels les _Éléments de Travail_ passent du statut « _commencé_ » au statut « _terminé_ ».
    - [ ] Les _Éléments de Travail_ entre les points « _commencé_ » et « _terminé_ », même s'ils sont en attente dans une _File d'attente_ ou un _Tampon_, sont considérés comme :
      - _Travail Commencé_ _mais Non Terminé_ _(SNFW)_ ou 
      - _Travail en Cours_ (WIP).
    - [ ] Une définition de la manière dont le WIP sera contrôlé de « _commencé_ » à « _terminé_ ».
    - [ ] Un ensemble de _Politiques explicites_ sur la façon dont les _Éléments de Travail_ peuvent circuler à travers chaque état de « _commencé_ » à « _terminé_ » sans défaut. _Par exemple, les membres du système Kanban pourraient avoir une politique explicite sur la correction de tout défaut connu dans un Élément avant de le déplacer vers l'état suivant, afin qu'aucun défaut connu ne soit transmis à un processus ultérieur_.
    - [ ] Un _Niveau de Service Attendu_ (SLE) : Une prévision du temps qu'un _Élément de Travail_ devrait prendre pour circuler de « _commencé_ » à « _terminé_ ». _Notez qu'il n'y a aucune garantie que ce qui a eu lieu dans le passé se produira dans le futur_.
    - [ ] Une _Visualisation_  _du Niveau de Service_ _Attendu_ sur le tableau Kanban.

L'ordre dans lequel ces éléments sont implémentés n'est pas important tant qu'ils sont tous _implémentés_. Les membres du système Kanban demandent souvent des éléments supplémentaires concernant la _Définition du Flux de Travail_, tels que les valeurs, les principes et des accords sur les pratiques de travail, dépendant du _contexte dans lequel opèrent les membres du système Kanban_. _Des ressources figurent dans l'annexe de ce guide et ailleurs pour aider à décider des options appropriées au contexte._ 

Les membres du système Kanban vont souvent avoir besoin de plus d'une _Définition du Flux de Travail_. Ces multiples _Définitions du Flux de Travail_ pourraient correspondre à plusieurs groupes de membres du système Kanban, différents niveaux de l'organisation,etc. Bien que ce guide ne prescrive pas de nombre minimum ou maximum de _Définitions du Flux de Travail_, il encourage l'établissement d'une _Définition du Flux de Travail_ partout où les membres du système Kanban ont besoin de connecter le _Flux_ à la _Valeur_. 

_L'activation du Flux est l'acte de favoriser un système fluide et équilibré pour créer de la Valeur. La Définition du Flux de Travail devrait garantir que le système est équilibré pour optimiser le Flux de Valeur.Les membres du système Kanban y parviennent en améliorant la façon dont ils valident que la Valeur a été livrée, et en éliminant le Travail qui ne génère pas de Valeur._

La _Visualisation_ d'une _ou de plusieurs_ _Définitions du Flux de Travail_ est _définie_ sous le terme de _tableau Kanban_. Il n'y a pas de directives spécifiques quant à l'apparence d'une _Visualisation_. Une attention particulière devrait être accordée à tous les aspects de la _Définition du Flux de Travail_ (par exemple, les _Éléments de Travail_, les politiques) ainsi qu'à tout autre facteur spécifique au contexte qui pourrait affecter la manière dont la Valeur _circule_. 

_Dans une équipe logicielle, Kanban pourrait permettre de Visualiser le développement de fonctionnalités, de l'idée au déploiement. Dans une équipe marketing, il pourrait suivre une campagne, de la conception au lancement._

Les membres du système Kanban ne sont limités que par leur imagination quant à la façon dont ils rendent le _Flux visible et comment ils favorisent des interactions utiles et intentionnelles avec les bonnes personnes au bon moment_. _Il est recommandé de rendre Visible chaque étape d'un flux de travail pour éviter que le gaspillage ne reste caché._

### Gérer Activement les Éléments dans un Flux de Travail 

Les Éléments dans le flux de travail doivent être gérés activement. _La gestion active des Éléments dans un flux de travail peut prendre plusieurs formes, y compris, mais sans s'y limiter, les suivantes :_

- _Contrôler le « Travail Commencé mais Non Terminé » (SNFW) ou le Travail en Cours (WIP)._
- S'assurer que les _Éléments de Travail_ ne vieillissent pas inutilement, en utilisant _le Niveau de Service Attendu_ comme référence.
- Résoudre les _obstacles_ qui occasionnent du _Travail_ ou des processus bloqués.

Une pratique courante consiste pour les membres du système Kanban à examiner _régulièrement les Éléments actifs_. Cette révision peut avoir lieu en continu ou à intervalles réguliers. Les membres du système Kanban doivent contrôler explicitement le nombre d'_Éléments de Travail_ dans un flux de travail de l'étape « _commencé_ » à l'étape « _terminé_ », _directement ou indirectement_. Ce contrôle peut être représenté sur un tableau Kanban de la manière jugée appropriée par les membres du _système Kanban_.

_L'utilisation de limites de WIP (16) dans Kanban pour le Travail de la Connaissance indique généralement que la demande peut dépasser la capacité de l'équipe, de sorte que les limites de WIP (16) sont utilisées pour réguler et équilibrer le Flux d'Éléments de Travail et prévenir la surcharge._ 

_En revanche, le système Toyota de flux tiré juste-à-temps (JIT) empêche la demande de dépasser l'offre, car les demandes ultérieures ne seront pas traitées tant que la précédente n'aura pas été satisfaite -- un système auto-limitant ou auto-régulant conçu pour synchroniser la production avec la demande réelle du client et minimiser les stocks dans un environnement de fabrication stable et prévisible._ 

_Produire uniquement ce qui est nécessaire juste-à-temps est la pierre angulaire du Système de Production Toyota. Le système Kanban du Système de Production Toyota tire exactement ce qui est nécessaire quand cela est nécessaire._

Pour le Travail de la Connaissance, les membres du système Kanban ne devraient commencer le Travail sur un Élément (_sélectionné_) que lorsqu'il y a un signal clair qu'il y a de la capacité pour le faire. Lorsque le WIP descend en dessous du contrôle défini dans la _Définition du Flux de Travail_, cela peut être un signal pour sélectionner un nouveau travail. Les membres du système Kanban devraient s'abstenir de sélectionner plus de _Travail_ dans une partie donnée du flux de travail _au-delà du ou des_ _contrôles de WIP pertinents ou de sélectionner du Travail dépassant leur capacité. Si nécessaire, le Travail devrait être divisé en Éléments plus petits, mais apportant toujours une valeur potentielle._

_Il n'y a aucune exigence à avoir un référentiel d'Éléments de Travail qui ne soit pas encore en Travail en Cours, communément appelé backlog. Un backlog est émergent et peut inclure diverses étapes ou aspects de la préparation du Travail. S'il en existe un, il n'est pas nécessaire qu'il soit sous forme de liste ou séquencé._

_Idéalement, le Travail devrait entrer dans le système Kanban guidé par des politiques plutôt que d'être assigné à un individu. Ceci dans l'objectif de la gestion du travail inactif, et non des personnes inactives :_

- _Les membres du système Kanban devraient s'autoorganiser autour du Travail et de la Définition du Flux de Travail._
- _Les membres du système Kanban devraient « commencer » le Travail lorsqu'ils sont prêts à y travailler, en introduisant de nouveaux Travaux en fonction de la façon dont ils sont priorisés._
- _Les membres du système Kanban -- et d'autres personnes extérieures au système Kanban -- devraient explicitement empêcher que le Travail ne soit poussé vers les membres du système Kanban._
- _Méfiez-vous de la re-priorisation du « Travail Commencé mais Non Terminé » (SNFW) ou du Travail en Cours (WIP), car cela provoque le vieillissement (l'inactivité) de ces Éléments et entraîne des Temps Écoulés de « Commencé » à « Terminé » plus longs ou moins prévisibles._
- _Le redimensionnement (Rightsizing), une pratique optionnelle, mais recommandée, consiste à évaluer si les Éléments de Travail correspondent au Niveau de Service Attendu, ou sont trop grands pour le Niveau de Service Attendu et nécessitent donc une division en Éléments de Travail plus petits, mais apportant toujours une valeur potentielle._

_Le redimensionnement (Rightsizing), dans un contexte de Travail de la Connaissance, est basé sur l'hypothèse que les Éléments de Travail doivent être à ou en dessous d'une taille maximale (selon les membres du système Kanban), mais ne doivent pas nécessairement être de la même taille. Si un Élément de Travail est si grand qu'il ne peut pas être terminé dans un délai raisonnable (par exemple, il enfreindrait le Niveau de Service Attendu), même après l'avoir commencé, les membres du système Kanban devraient envisager de le diviser en Éléments plus petits, qui ont chacun le potentiel de livrer de la Valeur. De même, les Éléments de Travail peuvent être fusionnés._

_La gestion de la capacité nécessite souvent plus que le contrôle du WIP._ Le contrôle du WIP aide le _Flux_ et améliore souvent la concentration collective, l'engagement et la collaboration des _membres du système Kanban_. Toutes les exceptions acceptables au contrôle du WIP devraient être _explicitement énoncées_ dans le cadre de la _Définition du Flux de Travail_.

### Améliorer le _Flux_ 

Étant donnée une Définition du Flux de Travail explicite, il est de la responsabilité des membres du système Kanban d'améliorer continuellement leur _Flux_ _en atteignant_ un meilleur équilibre entre efficacité, efficience et prédictibilité. L'étude continue du système peut guider les améliorations potentielles. _Les membres du système Kanban réexaminent souvent la Définition du Flux de Travail _pour discuter_ et adopter les changements nécessaires_.

_Les améliorations sont souvent mises en œuvre juste-à-temps. Les améliorations ne sont pas limitées par leur taille ou leur portée. Parfois, l'amélioration est au-delà du contrôle ou de l'influence des membres du système Kanban. Des interactions ciblées et intentionnelles, la culture du changement et la suppression des Bloqueurs à tous les niveaux sont essentielles à l'amélioration._

_Mieux encore, les personnes qui démontrent du leadership, également appelés leaders,  font un tour de terrain (Go See), écoutent et obtiennent une réelle compréhension en collectant des faits afin d'éclairer la prise de décision. C'est ce qu'on appelle Genchi Genbutsu (Observe, comprends, agis). Les leaders font du Genchi Genbutsu si souvent que la vérité émerge. La connaissance de ce qu'il faut faire est une chose, mais une action ciblée, inlassable, itérative et compatissante vers l'amélioration (y compris des boucles de rétroaction plus courtes) en est une autre._

_Kanban favorise le changement évolutif, mais il n'interdit pas les changements structurels plus importants, éclairés par des preuves et une compréhension claire du système. Les changements devraient être ciblés et contextualisés._

## Informer l'Optimisation du Flux avec des Mesures ou des Métriques Appropriées 

- **Temps passé dans l'état bloqué d'un élément terminé (BETFI):** Le temps cumulé qu'un unique Élément de Travail « terminé » (ou une sélection d'Éléments « terminés ») a passé dans un état bloqué dans un flux qui va de « commencé» à « terminé », sans tenir compte des états de File d'attente ou de Tampon. \[mesure pour un seul Élément, métrique pour plusieurs Éléments\]
  
>[!FOOTNOTE]
>La définition du flux de travail doit clairement définir tous les états de file d'attente et de tampon.

- **_Temps passé dans des Files d'Attentes ou Tampons (CQBT)_** : _Le temps cumulé qu'un seul Élément de Travail « terminé » (ou une sélection d'Éléments « terminés ») a passé dans des Files d'attente ou des Tampons dans un flux qui va de « commencé » à « terminé ». \[mesure pour un seul Élément de Travail, métrique pour plusieurs _Éléments de Travail\]_ 
- **_Temps Écoulé de « Commencé » à « Terminé » (ETSF)_** : Le nombre (généralement _arrondi à la valeur supérieure) d'unités de temps écoulé (souvent des jours calendaires) à partir_ du moment où un seul _Élément de Travail_ et passé du statut « _commencé_ » jusqu'au moment où un _Élément de Travail_ est arrivé au statut « _terminé_ ». _Seuls les Éléments « terminés » obtiennent des ETSF. \[ _mesure_\] 
- **_Répartition du Flux_** : La Visualisation et l'analyse des types d'Éléments de Travail qui ont atteint le statut « terminé » ou « achevé » au fil du temps, permettant une gestion active qui assure un équilibre sain des efforts. \[métrique\] _

> [!FOOTNOTE]
> La définition du flux de travail doit clairement définir tous les états de file d'attente et de tampon.

- **_Rendement du Flux:_** Le ratio du temps de travail actif par rapport au temps total qu'un Élément ou une sélection d'Éléments passe dans le flux de travail, y compris les temps d'attente, entre les points « commencé » et « terminé » sur une Définition du Flux de Travail. _Elle est exprimée en pourcentage. Elle peut être trompeuse, car le temps passé dans les états actifs peut ne pas être le temps réel d'activité. ((ETSF-(CQBT + autre temps non générateur de valeur)) / ETSF) 100\ \[métrique\]. Exemple d'autre temps non générateur de valeur : « Temps passé dans l'état bloqué d'un élément terminé » (BETFI)._
- **Nombre de Bloqueurs**: Le nombre d'obstacles, partiels ou complets, à un instant donné (généralement la date/heure actuelle), au Flux d'Éléments de Travail de « commencé » à « terminé ». \[mesure\]
- **Efficacité du Cycle de Production:** Mesure de l'efficacité du Travail d'un système ou de ses parties. Elle est calculée en divisant le temps à Valeur ajoutée par le Délai de mise sur le marché (Time to Market T2M), puis en multipliant par 100 pour obtenir un pourcentage. Cela signifie que les membres du système Kanban doivent mesurer tout le temps à Valeur ajoutée et tout le temps sans Valeur ajoutée (y compris, mais sans s'y limiter, le temps d'attente). (( T2M-(CQBT+ autre temps non générateur de valeur)) / T2M) 100\. \[métrique\]
- **_Niveau de Service Attendu:_** Une prévision du temps qu'un _Élément de Travail_ devrait prendre pour circuler de « _commencé_ » à « _terminé_ ». Le _Niveau de Service Attendu_ lui-même a deux parties : une période de temps écoulé et une probabilité associée à cette période (par exemple, « 85 % _des Éléments de Travail_ seront 'terminés' d'ici huit jours ou moins »). _Elle est basée sur une sélection du Temps Écoulé de « Commencé » à « Terminé » de tout l'historique, d'un sous-ensemble de l'historique, ou si les données n'existent pas ou sont insuffisantes, une estimation éclairée. \[métrique\]_
- **Travail Commencé mais Non Terminé (SNFW)** ou **Travail en Cours (WIP)** _ou **Charge du Flux:**_: _Le_ nombre d'_Éléments de Travail_ « commencés», mais non « terminés ». _\[mesure\]_
- **Débit (Throughput):** Le nombre d'_Éléments de Travail_ « terminés » par unité de temps. La mesure_ du _Débit est le nombre exact d'_Éléments de Travail_, _pas le revenu. \[métrique\]_

- **Délai de mise sur le marché, également connu sous le nom de Délai de livraison au Client** (T2M) : Le nombre (généralement arrondi à la valeur supérieure) d'unités de temps écoulé (souvent des jours/semaines calendaires) à partir du moment où la commande d'une Partie Prenante pour un seul Élément de Travail a été reçue jusqu'au moment où l'Élément de Travail a été livré à la Partie Prenante. C'est un exemple de ETSF. \[mesure pour un seul Élément de Travail, métrique pour un produit ou un service\]
- **Âge Total de l'Élément de Travail (TWIA)** ou **Temps Écoulé Total pour les Éléments « Commencés », mais non « Terminés » (TETSNFI):** Le temps écoulé total à partir du moment où tous les Éléments de Travail en cours (« commencés », mais non « terminés ») ont « commencé » jusqu'à une date/heure spécifiée, généralement la date/heure actuelle. \[métrique\] 
- **Âge de l'Élément de Travail (WIA)** ou **_Temps Écoulé pour les Éléments « Commencés », mais Non « Terminés » (ETSNFI):_** Le nombre (généralement _arrondi à la valeur supérieure) d'unités de temps écoulé (souvent des jours calendaires) à partir de la date/heure à laquelle un seul Élément de Travail « non terminé » a « commencé » jusqu'à une date/heure spécifiée, généralement la date/heure actuelle. En agissant sur les Éléments relativement plus anciens, les boucles de rétroaction peuvent être raccourcies et le Flux s'améliore. \[mesure\]_

Les _métriques_ et _mesures_ de _Flux_ s'appliquent aux points « _commencé_ » et « _terminé_ » appropriés établis par les _membres du système Kanban_ dans leur _Définition du Flux de Travail_. S'il existe plusieurs ensembles de points « _commencé_ » et « _terminé_ », certaines _métriques_ et _mesures_ de _flux_ sont souvent appliquées à chaque paire « _commencé_ » et « _terminé_ ».

**_Si les _membres du système Kanban_ ne savent pas par où commencer, ce guide suggère :_**

_Délai de mise sur le marché_, et pour chaque paire cohérente « _commencé_ » et « _terminé_ » :

- Un _Niveau de Service Attendu_ (requise pour au moins une paire « _commencé_ » et « _terminé_»),
- _Âge de l'Élément de Travail_ (WIA) ou _Temps Écoulé pour les Éléments\ « Commencés », mais Non « Terminés » (ETSNFI)_,
- _Temps Écoulé de « Commencé » à « Terminé » (ETSF)_, et
- _Débit_.
  
À condition que les membres du système Kanban utilisent les _métriques_ et _mesures_ de _Flux_ telles que décrites dans ce guide, _et qu'elles soient appropriées au contexte,_ ils peuvent les désigner par d'autres noms. Il appartient aux _membres du système Kanban_ de décider comment utiliser au mieux ces _métriques et mesures de Flux, par exemple en les Visualisant dans des graphiques ou en évaluant la variation. Une approche proactive axée sur les  résultats, l'impact et la Valeur est recommandée._

### Résultats, Impact et Valeur 

_Les membres du système Kanban devraient régulièrement rechercher des preuves de résultats/impact, par exemple :_

- _Les résultats pour le client pourraient se concentrer sur la livraison d'une Valeur mesurable aux clients, par exemple, une Demande d'Échec réduite, une réduction des coûts à long terme pour le client, ou des tâches à faire traiter du client (18)._

- _Les résultats pour l'utilisateur pourraient aborder des changements spécifiques dans le comportement de l'utilisateur qui résolvent des problèmes ou améliorent les expériences, par exemple, « terminer » des Éléments de Travail plus efficacement à des coûts les plus bas, ou une meilleure utilisabilité._

- _Les résultats pour les Parties Prenantes du produit pourraient relier ces changements de comportement aux métriques de performance du produit, telles que les tendances d'adoption, de rétention et de convergence des clients, ainsi que les tendances d'adoption des fonctionnalités, les métriques des décideurs et des utilisateurs, et le Délai de mise sur le marché du produit._

- _L'impact pour les Parties Prenantes de l'entreprise, par exemple, la conformité, la réduction des coûts à long terme pour l'entreprise, les résultats commerciaux, les tendances en matière de parts de marché, la satisfaction des clients pour tous les produits, etc.._

- _Résultats pour les membres du système Kanban tel qu'une capacité améliorée, en considérant par exemple, le flux psychologique (15), la fréquence des versions, les outils, les compétences, la dette technique, la dette d'expérience utilisateur (UX), la dette d'expérience client (CX), la dette de conception centrée sur l'humain, la capacité du domaine technique, la capacité du domaine de marché, la capacité du domaine commercial, et un climat/culture d'amélioration nette._

Toutes les approches ci-dessus peuvent être utiles. Considérez également
les points suivants :

- **Demande suite à un Échec** (17) **:** Demande causée par l'échec de faire quelque chose ou de faire quelque chose correctement pour le client. C'est un signal d'amélioration potentielle. Elle met en évidence où la capacité est gaspillée en raison d'échecs précédents, de Travaux de mauvaise qualité ou de mauvaises décisions. Par exemple, une équipe de support client peut recevoir des appels répétés en raison d'instructions de facturation peu claires. \[métrique\]

- **Délai de Valeur Validée, également connu sous le nom de Délai de Valeur ou Délai de Résultat** : Le _nombre arrondi à la valeur supérieure d'unités de temps écoulé (souvent des jours/semaines calendaires) à partir du moment où la commande d'un Partie Prenante pour un Élément de Travail a été reçue jusqu'au moment où la Valeur a été validée. C'est un exemple de ETSF axé sur des résultats ayant une valeur et qui soient mesurables. \[mesure\]_

- **Valeur Validée:** Un Élément de Travail qui atteint le point « terminé » et livre la Valeur prévue à la Partie Prenante (y compris, mais sans s'y limiter, le client ou l'utilisateur), en respectant les politiques explicites, par exemple, les normes de qualité ou d'expérience. Comprend souvent des preuves et des observations._
- **Valeur Invalidée:** Un Élément de Travail qui atteint le point « terminé » ou est évalué, mais ne parvient pas à livrer la Valeur prévue, ne répondant pas aux attentes définies dans la Définition du Flux de Travail, nécessitant souvent un travail supplémentaire ou un rejet, informé par des preuves et des observations. Considérez le contexte.

_En mesurant ces types de résultats, d'impacts, de métriques de Valeur et de mesures de Valeur, les membres du système Kanban s'assurent qu'ils ne se contentent pas de livrer du Travail rapidement (outputs), mais qu'ils livrent une Valeur réelle et des améliorations (résultats et impacts) aux Parties Prenantes, y compris, mais sans s'y limiter, les clients et les utilisateurs._

_La clarté et la compréhension des Éléments de Travail devraient se produire juste-à-temps pour éviter le gaspillage. Évitez une focalisation excessive sur les livrables et une focalisation insuffisante sur les résultats. Les membres du système Kanban devraient examiner proactivement, intentionnellement, délibérément et régulièrement les métriques ou mesures et les améliorer continuellement._

## Note de fin 

_Seules les Pratiques Kanban, les critères minimaux de la Définition du Flux de Travail et une sélection de métriques ou mesures sont obligatoires ; tout le reste est facultatif. Considérez le contexte. Les membres du système Kanban devraient favoriser le Flux humain de Valeur._

_Le retour sur résultats (feedback) fait référence aux données qui remontent après que des changements soient réalisés, qu'il s'agisse d'informations quantitatives ou qualitatives sur les résultats, les impacts, ou même les changements dans l'environnement du marché. Ce retour peut influencer les résultats de la Valeur pour les Parties Prenantes, ainsi que les intrants, les efforts, les ressources ou les coûts impliqués à l'avenir. (Note : Les personnes ne sont pas des « ressources »)._

_En pratique, Kanban est un voyage d'apprentissage et d'adaptation continus. En commençant par ces pratiques fondamentales et en s'améliorant continuellement, les membres du système Kanban peuvent atteindre durablement un meilleur Flux de Valeur. Les membres du système Kanban devraient commencer simplement et faire évoluer leur système Kanban au fur et à mesure qu'ils apprennent._

## Historique de Kanban 

L'état actuel de Kanban peut être attribué au Système de Production Toyota (et à ses antécédents) et au travail de personnes telles que Taiichi Ohno (9). L'ensemble collectif des pratiques pour le _Travail de la Connaissance_, maintenant communément appelé Kanban (12), est principalement originaire d'une équipe chez Corbis en 2006. Ces pratiques se sont rapidement répandues pour englober une communauté internationale vaste et diversifiée qui a continué à améliorer et à faire évoluer l'approche.

## Remerciements 

_Les personnes remerciées ici ne sont pas nécessairement d'accord avec ce qui est écrit dans ce document, et c'est tout à fait normal. Néanmoins, le \"Guide Ouvert de Kanban\" doit une immense gratitude à :_
- Tous ceux qui ont contribué au développement de Kanban, y compris ceux qui ont préféré ne pas être nommés

- _Les relecteurs des versions de juillet 2020 ou décembre 2020 du Guide Kanban : Jean-Paul Bayley, Jose Casal, Colleen Johnson, Todd Miller, Eric Naiburg, Steve Porter, Ryan Ripley, Dave West, Julia Wester, Yuval Yeret et Deborah Zanke_

- _Les relecteurs de la version de mai 2025 du Guide Kanban : Magdalena Firlit, Tom Gilb, Colleen Johnson, Christian Neverdal, Prateek Singh, Steve Tendon et Julia Wester_

- _Les relecteurs du Guide Ouvert de Kanban : Jim Benson, Andy Carmichael, Jose Casal, Magdalena Firlit, Michael Forni, Martin Hinshelwood, Christian Neverdal, Nader Talai, Steve Tendon et Nigel Thurlow_
- _Influences : Russell L. Ackoff, Jim Benson, Andy Carmichael, Emily Coleman, John Cutler, W. Edwards Deming, Dominica DeGrandis, Tom Gilb, Joseph M. Juran, Siegfried Kaltenecker, Henrik Kniberg, Klaus Leopold, John Little, Troy Magennis, Taiichi Ohno, Donald G. Reinertsen, Sam L. Savage, Walter Shewhart, Nader Talai, Steve Tendon, Nigel Thurlow et Donald J. Wheeler._

- _Les traducteurs de la version française : Dominique Causse, Jean-Hugues Congia, Stéphane Maze, Thomas Moreau, Laurent Thomas, Pierre Laurent_

## Annexes 

### Contrôler le Travail en Cours = Contrôler le « Travail Commencé mais Non Terminé » 

Le contrôle du _« Travail Commencé mais Non Terminé », également appelé contrôle du WIP_, peut être représenté sur un _tableau Kanban_ de la manière que les _membres du système Kanban_ jugent appropriée, y compris, mais sans s'y limiter, marquage par des rubans adhésifs de peintre, l'Âge Total de l'Élément de Travail (TWIA) ou le Temps Écoulé Total pour les Éléments « Commencés », mais Non « Terminés » (TETSNFI), des contrôles de file d'attente, des niveaux de contrôle WIP ou des plages de contrôle WIP.

_Il existe également des options non-Kanban facultatives, prises en charge par certaines communautés, telles que CONWIP (16), DBR simplifié (16) ou DBR (16)_ :

- **CONWIP (Travail Constant En Cours / Constant Work In Progress/Process)** (16) **:** CONWIP est un système de flux tirés qui maintient une limite fixe de « Travail Commencé mais Non Terminé » (SNFW) ou de Travail en Cours (WIP) à travers l'ensemble du flux de travail, ne « commençant » un nouveau Travail que lorsqu'un Élément « terminé » ou « achevé » sort, régulant le Flux avec une seule contrainte à l'échelle du système. Exemple : Une équipe de support logiciel n'autorise que 15 tickets ouverts à tout moment ; lorsqu'un ticket est résolu, un nouveau peut être « commencé ». Tout le monde ne soutient pas cette proposition.

- **DBR** (Tambour-Tampon-Corde / Drum-Buffer-Rope) (3.16) **:** Une approche avancée qui gère la Contrainte de Flux avec des Tampons avant la Contrainte de Flux et aux sorties du système, maximisant le Débit tout en protégeant contre la variabilité dans les systèmes complexes. Exemple : Dans un groupe de développement de produits, la revue UX (principale Contrainte de Flux) donne le rythme tambour (drum) avec un Tampon de conceptions en amont, et un Tampon secondaire avant l'approbation légale qui empêche la surcharge. Le nouveau Travail n'est libéré que lorsque les deux Tampons ont de la capacité. Tout le monde ne soutient pas cette proposition.

- **Contrainte de Flux** (16) **:** Le goulot d'étranglement avec la moins grande capacité dans la Définition du Flux de Travail. Il peut y avoir plusieurs goulots d'étranglement (tous avec moins de capacité que ce qui est requis par la demande), et la Contrainte de Flux est celle qui est la plus limitée. Elle restreint le Débit global du système Kanban, déterminant le rythme auquel la Valeur est livrée. Exemple : Dans une équipe de développement logiciel, si le test prend le plus de temps et limite la mise à disposition des fonctionnalités, le test est la Contrainte de Flux qui donne le rythme au système. Dans le Travail de la Connaissance, les goulots d'étranglement présentent souvent un comportement turbulent et peuvent se déplacer dans le flux de travail de manière imprévisible. Mais parfois, les goulots d'étranglement sont tenaces.

- **DBR simplifié (tambour-tampon-corde / Drum-Buffer-Rope)** (3.16) **:** Une méthode de planification simplifiée où le Débit du système Kanban donne le rythme du flux de travail, et le Débit agit comme un signal de réapprovisionnement comme dans CONWIP. Supposons qu'il existe un système Kanban utilisant DBR simplifié, et que la Définition du Flux de Travail est conçue pour gérer jusqu'à 15 Éléments, avec 12 activement en cours (drum) et un Tampon de 3 Éléments prêts à commencer, garantissant que le Travail continu sans heurts si l'un des 12 Éléments rencontre des problèmes une fois  tiré du Tampon, maintenant le Flux avec, par exemple, 13 en cours et 2 en réserve. La corde (rope) signale le réapprovisionnement lorsqu'un Élément est livré, en maintenant le total dans la limite de 15 Éléments, et le système priorise la reconstruction rapide du Tampon s'il est épuisé, résolvant proactivement les problèmes pour maintenir le Flux. Tout le monde ne soutient pas cette proposition.

### Si les membres du système Kanban doivent prioriser un Élément de Travail à « commencer »

_Voici quelques techniques non-Kanban facultatives que certaines, mais pas toutes les communautés, soutiennent :_

- **Classe de Service** (21) **:** Un archétype pour un ou une sélection d'Éléments de Travail, tels que standard, date fixe (réelle et donc non arbitraire), urgence, ou intangible. Le choix de la classe de service peut refléter la Valeur perçue, le Risque ou le Coût de Retarder (Cost of Delay). Elle est plus utile comme une entrée pour décider quel(s) Élément(s) « commencer » lorsque la capacité le permettra, plutôt que de reprioriser les Éléments de Travail en Cours (ce qui n'est pas bon pour le Flux). Peut surcharger le système Kanban lorsqu'il est mal appliqué, par exemple, une « voie express » pourrait éventuellement être supplantée par une « voie super-express », et les choses commencent alors à devenir ridicules. Peut aussi  déséquilibrer un Flux même lorsqu'il n'est pas mal appliqué.

- **Coût de Retarder (Cost of Delay)(par unité de temps)** (7) **:** Le taux de perte de Valeur par unité de temps pour un ou plusieurs Éléments. A ne pas confondre avec le Coût Cumulé de Retarder. Il est souvent utile comme entrée pour décider quel(s) Élément(s) « commencer » lorsque la capacité le permettra, plutôt que de reprioriser les Éléments de Travail en Cours (ce qui n'est pas bon pour le Flux). Comme la plupart des entrées de priorisation, il est souvent basé sur des estimations éclairées. Il peut également être réel après coup. Par exemple, le Coût de Retarder pour un Élément de Travail est de 10 000 € par semaine. Les membres du système Kanban devraient faire preuve de prudence avant d'envisager cette approche.

- **Redimensionnement basé sur les données** (24-25) **:** Parfois plus efficace que d'autres options, car les membres du système Kanban connaissent rarement l'effort ou la Valeur à l'avance. Cela permet plus d'opportunisme.

- **Coût Cumulé de Retarder (total)** (7) **:** La perte cumulative totale sur une période de temps due à une période de retard spécifique pour un ou plusieurs Éléments. Il peut être réel ou prévu, et il est important de préciser lequel est mentionné. Par exemple, si le Coût de Retarder pour un Élément de Travail est de 10 000€ par semaine et qu′il est retardé de 3 semaines, le Coût Cumulé de Retarder est de 30 000€.

- **Table d'Estimation d'Impact (IET)**(22) **:** Évaluer les options par rapport aux attentes ou aux limites des Parties Prenantes.

- **Coût d'Opportunité:** La Valeur ou le bénéfice perdu en choisissant de travailler sur un ou plusieurs Éléments de Travail plutôt que sur d'autres Éléments de Travail potentiellement de valeur en raison d'une capacité limitée. Il reflète les compromis faits lors de la priorisation dans la limite de la capacité dans un système Kanban, où se concentrer sur un ou plusieurs Éléments de Travail signifie renoncer à d'autres qui auraient également pu livrer de la Valeur. Les membres du système Kanban utilisent souvent des métriques comme le Coût de Retarder (Cost of Delay) ou le Coût Cumulé de Retarder pour quantifier le coût d'opportunité. Étant donné que la Valeur et, par conséquent, le Coût d'Opportunité sont difficiles, voire impossibles à prévoir, les membres du système Kanban devraient faire preuve de prudence avant d'essayer cette approche.

- **Aléatoire:** Peut-être plus efficace que d'autres options, car l'effort ou la Valeur ne sont pas connus à l'avance.

- **Options Réelles** (23) **:** Reporter les engagements jusqu'à ce que des informations suffisantes soient disponibles, en traitant les décisions comme des options de valeur, avant que les options arrivent à expiration, pour maximiser la flexibilité et gérer le Risque.

- **Risque** : Faire l'Élément le plus risqué en premier. Le Risque peut inclure la probabilité que la Valeur ne puisse pas être récoltée.

- **Tâche la Plus Courte en Premier** (24-25) **:** Sélectionner l'Élément de Travail avec l'effort perçu le plus faible, en priorisant les Éléments de Travail redimensionnés par rapport aux autres Éléments de Travail. Cela peut conduire à des boucles de rétroaction plus courtes et à des résultats plus rapides. Mais cela peut aussi entraîner un « démarrage » retardé sur un Élément de Travail plus grand et plus risqué.

- **Mou** (19) **:** Le Mou (Slack) consiste à laisser une capacité inutilisée dans le système pour faire face aux pics de demande, au travail imprévu ou à l'émergence de circonstances imprévues. Dans un contexte Kanban pour le Travail de la Connaissance, c'est une allocation délibérée ou une politique de capacité ou de temps de réserve dans la Définition du Flux de Travail pour absorber la variabilité, gérer les interruptions inattendues ou permettre l'amélioration continue sans compromettre le Débit du système Kanban. Exemple : Les membres du système Kanban pourraient maintenir un Mou en limitant leur « Travail Commencé mais Non Terminé » (SNFW) ou leur Travail en Cours (WIP) à 80 % de la capacité, ce qui laisse du temps pour répondre aux demandes urgentes ou affiner les processus sans retarder le travail planifié. Le Mou est un concept clé du Lean.

- **Valeur divisée par l'Effort:** Valeur estimée (généralement une estimation éclairée) divisée par l'Effort estimé (généralement une estimation éclairée). L'Effort réel et la Valeur ont tendance à être aléatoires. Les membres du système Kanban devraient faire preuve de prudence avant d'envisager cette approche. En option, considérez le Risque.

### Conventions Utilisées dans le Contexte du Travail de la Connaissance 

- **Tampon** (16) **:** Un tampon est une zone limitée en WIP (ou limitée en « Travail Commencé mais Non Terminé ») qui contient temporairement le Travail pour fluidifier le Flux et éviter la surcharge, et fonctionne également comme une file d'attente contrôlée par le WIP. À ne pas confondre avec le Mou. Tout le monde ne soutient pas l'usage d'un Tampon ; plus de colonnes peuvent entraîner une quantité plus élevée de « Travail Commencé mais Non Terminé » (SNFW) ou de Travail en Cours (WIP).
- **Définition du Flux de Travail:** La compréhension partagée explicite du Flux entre les membres du système Kanban dans leur contexte, y compris, mais sans s'y limiter, l'ensemble explicite d'accords et de politiques qui décrivent comment les Éléments de Travail sont sélectionnés, traités et « terminés » à travers les étapes distinctes du flux de travail.

- **Politique explicite:** Une politique explicite dans un système Kanban est une règle ou une ligne directrice clairement définie et visible qui rend les hypothèses concernant le flux de travail --- telles que le moment où les Éléments de Travail « commencent » ou se déplacent --- transparentes pour les membres du système Kanban. Ces politiques devraient être Visualisées sur le tableau Kanban et être facilement accessibles, garantissant que tous les membres du système Kanban comprennent et suivent le même processus. En rendant les politiques explicites, les membres du système Kanban réduisent l'ambiguïté, alignent les actions et soutiennent le Flux optimisé de Valeur.

- **«Terminé » (ou « Achevée »):** Lorsque le chronomètre du Temps Écoulé de «Commencé» à «Terminé» s'arrête pour une paire «commencé» et «terminé» dans une Définition du Flux de Travail.

- **Flux** (Flow) **:** Le mouvement (idéalement fluide) et la production et livraison d'Éléments de Travail à travers la Définition du Flux de Travail. Un système Kanban équilibré maintient le Débit. Dans un monde idéal, le Travail qui est entré dans le système (Travail de la Connaissance), coulerait comme une rivière, ne s'arrêtant jamais, trouvant le chemin de la moindre résistance jusqu'à atteindre le client. À ne pas confondre avec la Définition du Flux de Travail (DoW). [Dans Kanban, Flux \> utilisation]{.underline}.

- **kanban:** Un kanban (panneau en japonais) est un indice Visuel qui déclenche la sélection, le « démarrage » ou le déplacement d'un Élément de Travail. Rien ne devrait être produit ou déplacé sans un signal kanban.

- **Kanban** ou **système Kanban:** L'ensemble holistique des concepts de ce guide. Kanban est enraciné dans l'idée d'un système de signalisation (une façon de demander du Travail ou de l'inventaire dans un système de production). Lorsque ce guide dit Kanban, supposez un système Kanban.

- **Tableau Kanban** : Une représentation Visuelle d'une ou plusieurs Définitions du Flux de Travail.

- **Travail de la Connaissance:** La création, l'application ou la gestion d'informations par le biais de processus cognitifs pour résoudre des problèmes (souvent) complexes, prendre des décisions ou innover, nécessitant généralement expertise, jugement et collaboration. Souvent, le Travail de la Connaissance et le gaspillage associé sont invisibles.

- **Itératif:** Les Éléments de Travail sont traités par cycles répétés, chaque cycle impliquant la révision et l'affinage du même Travail sur la base de la rétroaction, des tests ou de nouvelles informations. Kanban n'est pas intrinsèquement inadapté au travail créatif itératif, mais il peut nécessiter une réflexion approfondie ou une adaptation.

- **JIT:** Juste-à-Temps de Toyota -- Produire uniquement ce qui est nécessaire, quand cela est nécessaire, dans la quantité nécessaire pour minimiser le gaspillage et optimiser l'efficience.

- **Mesure:** Une mesure est un point de données brut, spécifique à l'unité, représentant une seule quantité, telle que le « nombre d'Éléments de Travail terminés cette semaine » ou le « temps pour terminer un Élément de Travail », servant d'entrée fondamentale pour suivre la performance du Flux. Exemple : Les membres du système Kanban enregistrent une mesure de 10 Éléments de Travail terminés à ce jour.

- **Métrique:** Une métrique est un calcul quantifiable dérivé d'une ou plusieurs mesures pour fournir un contexte à la performance du flux de travail, tel que le « Débit moyen » ou le « Débit par semaine ». Exemple : Les membres du système Kanban calculent une métrique de Temps Écoulé de « Commencé » à « Terminé » moyen de 4 jours en divisant le temps total pour terminer 10 Éléments de Travail par le nombre d'Éléments de Travail.

- **Flux Tiré (Pull):** Le Travail est sélectionné (qu'il soit « commencé » ou « non commencé » sur la Définition du Flux de Travail) uniquement lorsqu'il y a de la capacité, choisi par les membres du système Kanban, et prévient la surcharge, idéalement signalé par un client, directement ou indirectement.

- **Flux Poussé (Push):** Le Travail est attribué aux membres du système Kanban ou dans le système Kanban sans tenir compte de la capacité actuelle ou de la préparation des membres du système Kanban à « commencer » le Travail.

- **File d'attente:** Une file d'attente dans Kanban est une zone d'attente pour les Éléments de Travail, souvent sans limites strictes, mais elle peut servir de Tampon si des limites de Travail en Cours (WIP) (16) ou des limites de « Travail Commencé mais Non Terminé » (SNFW) sont présentes.

<!-- -->

- **Risque:** La possibilité que quelque chose de mauvais puisse arriver.
- **Système stable:** Dit simplement, un système qui peut constamment répondre à la demande qui lui est imposée. Il existe des descriptions plus précises (7,8,20). Le Travail de la Connaissance a tendance à produire une plus grande variété de tailles d'Éléments de Travail que le travail de manufacturier. Des tailles inégales ne conduisent pas nécessairement à une plus grande variation des temps écoulés (due au temps d'attente étant souvent le facteur le plus significatif, etc.) ou du Débit, mais peuvent le faire (due à des dépendances externes, etc.). Le point de vue dans ce guide est que les approches conçues pour la production manufacturière ne sont pas sans utilité dans le Travail de la Connaissance.

- **Partie Prenante:** Une entité, un individu ou un groupe responsable de, intéressé par, ou affecté par les intrants, les activités et les résultats du système Kanban. Inclut, mais sans s'y limiter, le client, le décideur ou l'utilisateur.

- **« Commencé »:** Lorsque les chronomètres du temps écoulé « commencent » pour une paire « commencé » et « terminé » dans une Définition du Flux de Travail.

- **Paire « commencé » et « terminé »:** Chaque point « commencé », d'une ou plusieurs _Définition du Flux de Travail_ devrait avoir un point « terminé » correspondant de la même _Définition du Flux de Travail_.

- **Takt:** Le mot Takt est dérivé du mot allemand signifiant rythme, cadence ou cycle. Takt est lié au maintien du tempo en musique. L'usage moderne du Takt se fait généralement dans un contexte manufacturier. Takt est une mesure fondamentale dans le Système de Production Toyota et la Pensée Lean, utilisée pour calculer la capacité requise pour répondre à la demande dans un système stable. Le Débit, contrairement au Takt, qui fixe l'attente du rythme idéal basé sur la demande, mesure la production réelle par unité de temps. Takt aide également à obtenir un système équilibré pour répondre à la demande de manière cohérente en permettant aux membres du système Kanban de déterminer la capacité nécessaire à chaque étape d'un processus. Le calcul du Takt est difficile dans le Travail de la Connaissance, car il nécessite de comprendre la demande dans des environnements à forte variation. Pas toujours idéal pour le Travail de la Connaissance.

- **Travail:** Désigne un ou plusieurs Éléments de Travail, « commencés », « non commencés », « terminés» ou « non terminés ».

- **Élément de Travail:** Un Élément de Travail, également appelé Élément, contient le potentiel de Valeur. Divers termes peuvent être utilisés pour décrire les différents niveaux de granularité d'un Élément de Travail, tant qu'il a le potentiel de Valeur. Les Éléments de Travail qui n'ont pas le potentiel de Valeur pour les Parties Prenantes sont potentiellement source de gaspillage, par exemple, les gens se concentrent sur la « finition » de sous-tâches à travers plusieurs Éléments de Travail plutôt que de se concentrer sur « finir » un Élément à la fois. Le contrôle du « Travail Commencé mais Non Terminé » (SNFW) ou du Travail en Cours (WIP) pour les Éléments potentiellement source de gaspillage réduit souvent l'effort de collaboration et la concentration pour livrer la Valeur potentielle plus tôt. Considérez le contexte.

- **Valeur Validée:** Valeur confirmée par des preuves ou des observations (idéalement les deux), formellement ou informellement, par les Parties Prenantes ; souvent après un ou plusieurs cycles de retour sur résultats (et de retouches), par des Parties Prenantes internes et externes. Tout le monde ne soutient pas cette proposition.
  
- **Valeur:** Un bénéfice potentiel ou réalisé pour une Partie Prenante. Les exemples incluent la satisfaction des besoins du client, de l'utilisateur final, du décideur, de l'organisation et de l'environnement.

- **Visualiser, visualisation:** Toute méthode pour transmettre des idées efficacement, y compris la clarification conceptuelle, pas nécessairement que visuelle.

## Tableaux de correspondance avec les termes anglais 

 | Termes français | Sigles | Termes anglais |
| --- | --- | --- |
| Accord de Niveau de Service | SLA | Service Level Agreement |
| Âge de l'élément de travail | WIA | Work Item Age |
| Âge total de l'élément de travail | TWIA | Total Work Item Age |
| Coût Cumulé de Retarder (totale) |  | Delay Cost (total) |
| Coût de retarder (par unité de temps) | CoD | Cost of Delay (per unit of time) |
| Débit |  | Throughput |
| Définition du flux de travail | DoW | Definition of Workflow |
| Délai de mise sur le marché | T2M | Time to Market |
| Juste-à-Temps | JIT | Just-In-Time |
| Niveau de Service Attendu | SLE | Service Level Expectation |
| Table d'Estimation d'Impact | IET | Impact Estimation Table |
| Tambour-tampon-corde | DBR | Drum-Buffer-Rope |
| Temps Écoulé de « Commencé » à « Terminé » | ETSF | Elapsed Time from 'Started' to 'Finished' |
| Temps écoulé pour les éléments « commencés », mais pas « terminés » | ETSNFI | Elapsed Time for 'Started' but Not 'Finished' Items |
| Temps écoulé total pour les éléments « commencés », mais pas « terminés » | TETSNFI | Total Elapsed Time for 'Started' but Not 'Finished' Items |
| Temps passé dans les files d'attente ou tampons | CQBT | Cumulative Queueing or Buffer Time |
| Temps passé dans l'état bloqué d'un élément terminé | BETFI | Blocked Elapsed Time for Finished Items |
| Travail commencé, mais non terminé | SNFW | Started but Not Finished Work |
| Travail Constant En Cours | CONWIP | Constant Work In Progress/Process |
| Travail en cours | WIP | Work in Progress/Process |

## Références 
Les références sont placées ici pour informer les lecteurs des opportunités d'études complémentaires. Elles ne soutiennent pas nécessairement le texte de ce guide :

1.  Little, J. D. C. (1961). A proof for the queuing formula: L = λW. _Operations Research_, 9(3), 383--387. [[https://doi.org/10.1287/opre.9.3.383]{.underline}](https://doi.org/10.1287/opre.9.3.383)
2.  Deming, W. E. (1986). _Out of the crisis_. MIT Press. (Évalué par des pairs grâce à son adoption académique en gestion de la qualité.) 
3.  Goldratt, E. M. (1990). _Theory of Constraints_. North River Press. (Évalué par des pairs grâce à son adoption académique en recherche opérationnelle.)  
4.  Womack, J. P., & Jones, D. T. (1996). _Lean thinking: Banish waste and create wealth in your corporation_. Simon & Schuster. 
5.  Ackoff, R. L. (1999). _Ackoff's Best: His Classic Writings on Management_. NY: John Wiley & Sons. 
6.  Hopp, W. J. et Spearman, M. L. (2004) 'To pull or not to pull: what is the question?', _Manufacturing & Service Operations Management_, 6(2), pp. 133--148. [[https://doi.org/10.1287/msom.1030.0028]{.underline}](https://doi.org/10.1287/msom.1030.0028). 
7.  Reinertsen, D. G. (2009). _The Principles of Product Development Flow: Second Generation Lean Product Development_. Redondo Beach, CA: Celeritas Publishing 
8.  Shewhart, W. A. (1931). _Economic Control of Quality of Manufactured Product_. NY: D. Van Nostrand Company. 
9.  Ohno, T. (1988). _Toyota Production System: Beyond Large-Scale Production_. Portland, OR: Productivity Press.
10. Juran, J. M. (1992). _Juran on Quality by Design: The New Steps for Planning Quality into Goods and Services_. New York: The Free Press. 
11. Wheeler, D. J. (1993). _Understanding Variation: The Key to Managing Chaos_. Knoxville, TN: SPC Press. 
12. Wikipedia (2025) 'Kanban (development)'. Disponible sur : [https://en.wikipedia.org/wiki/Kanban\_(development)](<https://en.wikipedia.org/wiki/Kanban_(development)>) (Accessed: 22 June 2025).\_
13. _Kingman, J. F. C. (1961) ‘The single server queue in heavy traffic’, Mathematical Proceedings of the Cambridge Philosophical Society, 57(4), pp. 902–904. doi: 10.1017/S0305004100035783, and the stable URL is [https://www.cambridge.org/core/journals/mathematical-proceedings-of-the-cambridge-philosophical-society/article/single-server-queue-in-heavy-traffic/81C55BC00A68FE6D5385638AA0B0AF37](https://www.cambridge.org/core/journals/mathematical-proceedings-of-the-cambridge-philosophical-society/article/single-server-queue-in-heavy-traffic/81C55BC00A68FE6D5385638AA0B0AF37). _
14. _Roser, C. (2018) ‘The Kingman Formula – Variation, Utilization, and Lead Time’, AllAboutLean.com, 2 March. Available at: [https://www.allaboutlean.com/kingman-formula/](https://www.allaboutlean.com/kingman-formula/) (Accessed: 22 June 2025\)_
15. _Csíkszentmihályi, M. (1990) Flow: The Psychology of Optimal Experience. NY: Harper & Row_
16. _Tendon, S. and Müller, W. (2015). Hyper-Productive Knowledge Work Performance: The TameFlow Approach and Its Application to Scrum and Kanban. Plantation, FL: J. Ross Publishing._
17. _Seddon, J. (2019). Failure demand | Vanguard. \[online\] Vanguard-method.net. Available at: [https://vanguard-method.net/library/systems-principles/failure-demand/](https://vanguard-method.net/library/systems-principles/failure-demand/) \[Accessed 22 Mar. 2019\]_
18. Christensen, C.M., Hall, T., Dillon, K. and Duncan, D.S., 2016\. Know your customers' 'jobs to be done'. _Harvard Business Review_, 94(9), pp.54-62.
19. DeMarco, T. (2001). _Slack: Getting Past Burnout, Busywork, and the Myth of Total Efficiency_. Broadway Books.
20. Leopold, K. (2017) Little's law and system stability – an interview with Daniel Vacanti. Leanability. Available at: [https://www.leanability.com/en/blog/2017/08/littles-law-and-system-stability](https://www.leanability.com/en/blog/2017/08/littles-law-and-system-stability) \[Accessed 28 June 2025\].
21. Kanban University (2021) The Official Guide to The Kanban Method \[Online\]. Available at: [https://kanban.university/new-to-kanban-get-the-official-guide-to-the-kanban-method/](https://kanban.university/new-to-kanban-get-the-official-guide-to-the-kanban-method/) (Accessed: 29 June 2025).
22. _Gilb, T. (2005) Competitive Engineering: A Handbook for Systems Engineering, Requirements Engineering, and Software Engineering Using Planguage. Oxford: Elsevier Butterworth-Heinemann. Also available at: [https://bit.ly/TomGilbCompEng](https://bit.ly/TomGilbCompEng)_
23. Maassen, O., Matts, C. and Geary, C. (2013) Commitment: A novel about managing project risk. The Netherlands: Happy About.
24. Vacanti, D. S. (2015) Actionable Agile Metrics for Predictability: An Introduction. United States: ActionableAgile Press.
25. Vacanti, D. S. (2023) Actionable Agile Metrics for Predictability Volume II: Advanced Topics. United States: ActionableAgile Press.
