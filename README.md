# Statistique inférentielle en R — estimation et tests d'hypothèses

TP noté réalisé seule en 1re année de BUT Science des données (IUT Clermont Auvergne, site d'Aurillac).

## Le sujet

À partir d'un fichier de données de santé (nombre de pas par jour, durée et score de sommeil), l'objectif était de tirer des conclusions sur une population à partir d'un échantillon.

## Ce que j'ai fait

**Exercice 1 — Nombre de pas avant et pendant le confinement**
- Graphique de l'évolution du nombre de pas avec la date du début du confinement (17 mars 2020)
- **Tests de Student** pour savoir si la moyenne de pas pendant le confinement est différente de 7 000, avec un risque de 5 % puis de 1 %, et interprétation de la p-value

**Exercice 2 — Durée de sommeil**
- Suppression des valeurs manquantes
- **Intervalle de confiance** de la durée moyenne de sommeil et test d'une moyenne de 8 heures
- Estimation de la **proportion** de nuits trop courtes (moins de 7 h) ou trop longues (plus de 9 h), avec son intervalle de confiance

**Exercice 3 — Score de sommeil**
- Moyenne, écart-type et intervalle de confiance à 95 %
- Test de Student au risque de 1 %

## Contenu du dépôt

| Fichier | Contenu |
|---|---|
| `estimation_echantillonnage.R` | Script R commenté des trois exercices |

Le fichier de données du TP n'est pas inclus.

## Outils

R · t.test · intervalles de confiance · tests d'hypothèses
