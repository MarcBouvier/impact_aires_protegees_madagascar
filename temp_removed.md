# Présentation des donn

### Section 1 - Définition des objectifs de l'évaluation (1/4 journée ?)

Qu'est-ce qu'une évaluation d'impact au sens économétrique du terme ? Quels sont les autres types d'évaluation et quelle est la différence ? Place centrale d'une question évaluative précise pour les évaluations d'impact : impact de quoi (intervention), sur qui (groupe de traitement), sur quoi (variable de résultat). Les EI évaluent un mode d'intervention, pas un projet en particulier : enjeux de validité interne et validité externe.

-   Exercice : Formuler des questions se prêtant à une évaluation d'impact sur des enjeux de conservation.

-   Discussion : Approches évaluatives différentes qu'on peut porter avec d'autres méthodes (approches quali ou évaluation "classique").

> Synthèse : introduction succincte au formalisme des équations et aux DAG.

### Séance 2 - Recherche bibliographique (1/4 journée ?)

Compte tenu de la portée générale des EI, il n'est pas pertinent de les mener pour chaque projet/situation particulière : il est donc essentiel de commencer par une bonne revue de littérature pour savoir si le mode d'intervention qui nous intéresse a déjà été évalué dans un contexte analogue. Cette session présente les outils et méthodes de revue de littérature applicables aux évaluations d'impact.

Google Scholar : présentation de l'outil et recommandations pour trouver des évaluations d'impact pertinentes (recherche avancée, similaires et citations).

-   Exercice : utiliser Google Scholar pour mener une revue de littérature sur le thème de l'impact des aires protégées, au niveau mondial, régional (ex. Afrique) ou national (Madagascar)

Présentation des bases d'évaluation d'impact (p. ex. Campbell Collaboration). Focus sur la base d'évaluations d'impact du 3IE.

-   Exercice : explorer l'evidence gap map du sur la conservation des forêts : <https://gapmaps.3ieimpact.org/evidence-maps/forest-conservation-gap-map> - revue de littérature.

> Synthèse théorique : Présentation rapide des revues systématiques ;: méthode, portée et limites.

### Séance 3 - étude d'articles et synthèse (1/2 journée ?)

Les formateurs distribuent aux participant un article court sur l'évaluation de l'impact des aires protégées sur la déforestation. Les apprenants le lisent. Les formateurs en font une synthèse en renseignant plusieurs critères : discipline des auteurs, périmètre de l'étude, données mobilisées, unités comparées, taille d'échantillon, méthode, spécifications du modèle (variable de traitement, de contrôle, et de résultat), résultat.

-   Exercice : les étudiants se voient chacun remettre un article (en français) et remplir la ligne

> Synthèse théorique : tableau complété de revue de la littérature.

| Référence                    | Titre | Discipline | Périmètre | Données | Unités | Echantillon | Méthode | Traitement | Outcomes | Contrôles | Résultats |
|------------------------------|-------|------------|-----------|---------|--------|-------------|---------|------------|----------|-----------|-----------|
| [@spracklen_global_2015]     |       |            |           |         |        |             |         |            |          |           |           |
| [@joppa_global_2011]         |       |            |           |         |        |             |         |            |          |           |           |
| [@desbureaux_common_2016]    |       |            |           |         |        |             |         |            |          |           |           |
| [@gimenez_impact_2012]       |       |            |           |         |        |             |         |            |          |           |           |
| [@nelson_effectiveness_2011] |       |            |           |         |        |             |         |            |          |           |           |
| [@waeber_how_2016]           |       |            |           |         |        |             |         |            |          |           |           |
|                              |       |            |           |         |        |             |         |            |          |           |           |
|                              |       |            |           |         |        |             |         |            |          |           |           |
|                              |       |            |           |         |        |             |         |            |          |           |           |
|                              |       |            |           |         |        |             |         |            |          |           |           |

: Evaluations de l'impact des aires protégées sur la déforestation

```{r Tableau de revue de littérature}
# On initie un tableau vide
revue_litt <- tibble::tibble(
  `Référence` = character(),
  `Titre` = character(),
  `Discipline des auteurs` = character(),
  `Périmètre d'analyse` = character(),
  `Données mobilisées` = character(),
  `Unités comparées` = character(),
  `Taille d'échantillon` = character(),
  `Méthode d'attibution` = character(),
  `Variable de traitement` = character(),
  `Variables de contrôle` = character(),
  `Variable de résultat` = character(),
  `Résultats`= character())

# On remplit autant de "fiches" que de références pour composer le tableau final
revue_litt <- revue_litt %>% add_row(
  `Référence` = "",
  `Titre` = "",
  `Discipline des auteurs` = "",
  `Périmètre d'analyse` = "",
  `Données mobilisées` = "",
  `Unités comparées` = "",
  `Taille d'échantillon` = "",
  `Méthode d'attibution` = "",
  `Variable de traitement` = "",
  `Variables de contrôle` = "",
  `Variable de résultat` = "",
  `Résultats`= "")
```

### Séance 4 - Sources de données (1/2 journée ?)

Ouvrir les participants sur la diversité des données qui peuvent être mobilisées pour évaluer l'impact de solutions, projets ou politiques publiques : données d'enquêtes, recensements, systèmes d'information (administratifs/gestion), données satellitaires, nouveaux jeux composites. Avantage et limites de ces sources de données. Présentation de sources potentielles : IHSN, institut national de statistique, Protected Planet, FAO... (préparer un tableau de synthèse ?)

-   Exercice : recherche de source de données pertinentes pour étudier l'impact des aires protégées sur la déforestation.

Présentation d'outils facilitant la collecte : Google Earth Engine (catalogue) et mapme.biodiversity [@gorgen_mapmebiodiversity_2022].

-   Exercice : essai de recherche de données.

> Synthèse : enjeux de compatibilité des mailles spatiales, temporelles, unités...

### Séance 5 - Traitement des données (1 jour ?)

Présentation des principaux logiciels/langages : R, Python, Stata, Google Earth Engine, et ressources pour l'auto-formation.

-   Discussions : expériences et avantanges/inconvénients des logiciels à base de code.

Focus sur R : langages, librairies, ressources, types de documents de travail (R, RMarkdown, Quarto, Shiny...) et documents en sortie (présentations, LaTeX/pdf, html, Word, applications interactives...).

-   Exercice : prise en main de R, premier rendus

Présentation de l'étude de cas sur les aires protégées à Madagascar : section "Traitement de données" plus bas.

### Séance 6 - analyse de données (2 jours ?)

Reprise des différentes approches d'inférence causale. Focus sur les méthodes de matching. Présentation de l'approche "naïve" de matching.

-   Discussion : interprétation du code exécuté.

-   Exercice : que faut-il comparer avec quoi.

Présentation des principes de base du matching.

-   Exercice : lister les méthodes de matching.

Comparaison des résultats en sortie.

> Synthèse : importance d'avoir une discussion de fond : ATT, ATE, sélection des approches, validation.

### Séance 7 - Interprétation des résultats et discussion (1/2 journée ?)

# Cas d'étude : évaluation de l'impact des aires protégées sur la déforestation à madagascar

## Environnement et paramétrages

L'analyse est réalisée en R, qui est à la fois un logiciel et un langage open sources dédiés à l'analyse de données. Les traitements sont réalisés en Rmarkdown. Le même code source peut générer un rendu en LaTeX/PDF, HTML ou Word.

On réutilise en partie le code publié par Johannes Schielein: Jochen Kluve, Johannes Schielein, Melvin Wong, Yota Eilers, The KfW Protected Areas Portfolio: a Rigorous Impact Evaluation, KfW, 2022-07-08.

On s'appuie sur le package R {mapme.biodiversity}, développé par la KfW dans le cadre de l'initiative commune MAPME qui associe la KfW et l'AFD. Le package {mapme.biodiversity} facilite l'acquisition et la préparation d'un grand nombre de données (CHIRPS, Global Forest Watch, FIRMS, SRTM, Worldpop...) et calculer un grand nombre d'indicateurs de manière harmonisée (active_fire_counts, biome classification, land cover classification, population count, precipitation, soil properties, tree cover loss, travel time...). Une documentation riche est disponible sur le portail dédié du package en question.

On mobilise aussi les codes d'analyse d'impact développés par la même équipe et mise à disposition dans le dépôt Github: <https://github.com/openkfw/mapme.protectedareas>. Le code développé par l'équipe est assez complexe. A des fins pédagogiques et pour s'assurer qu'on l'a bien compris, on propose ici une version simplifiée (en cours de développement)

Les sources pour l'ensemble du code source et du texte du présent document est accessible sur Github à l'adresse suivante : <https://github.com/fBedecarrats/deforestation_madagascar>. Les analyses sont menées sur la plateforme SSP Cloud, mise à disposition par l'INSEE pour les data scientist travaillant pour des administrations publiques. Il s'agit d'une instance de stockage de données massif (S3) et de calcul haute performance (cluster Kubernetes) disposant d'une interface simplifiée permettant à l'utilisateur de configurer, lancer et administrer facilement des environnements de traitement de données (RStudio server, Jupyter lab ou autres...). Le code est conçu pour s'exécuter de la même manière en local sur un PC, mais la préparation des données sera certainement beaucoup plus longue à exécuter.
