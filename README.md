# 🩺 Dr Téou — Évolution temporelle de l'accès aux soins en France (2010 - 2024)

## 📌 Présentation du Projet

Le projet **Dr Téou** est une étude analytique et prospective portant sur l'accès aux soins de santé primaires et spécialisés dans les départements de la France métropolitaine entre **2010 et 2024**, avec des **projections prédictives jusqu'en 2036**.

L'objectif principal est de cartographier l'évolution de la démographie médicale (déserts médicaux vs zones surdotées), de comprendre les dynamiques de renouvellement des praticiens et d'analyser la corrélation entre la présence de médecins généralistes et de spécialistes.

## 🔗 Liens Rapides & Ressources

* 📊 **Présentation Interactive (Google Slides) :** [Accéder aux slides Google Drive](https://docs.google.com/presentation/d/1ijNpGf5N1GvktVrxPk7KI5pch4mDpuVS/edit)
* 📄 **Support de Présentation (Lien relatif GitHub) :**  [Consulter / Télécharger le PDF](./Dr%20Téou.pptx.pdf)
* 🐙 **Dépôt GitHub du Projet :** [Presentation-DrTeou-Projet-fin-bootcamp-LeWagon](https://github.com/zinebaknin-png/Presentation-DrTeou-Projet-fin-bootcamp-LeWagon)
* 🏥 **Source des Données :** [Portail Open Data Ameli.fr](https://www.ameli.fr)

## 👥 Équipe du Projet (Bootcamp Le Wagon)

* **Zineb Aknin**
* **Dylan Cadiou**
* **Solène Desbordes**
* **Valentin Marti**

## 📊 Périmètre d'Analyse

* **Source principale :** Données de l'Assurance Maladie & Sécurité Sociale (ameli.fr).
* **Périmètre géographique :** Départements de la France métropolitaine (Hexagone).
* **Professions analysées :** Médecins généralistes libéraux, ophtalmologues, dermatologues, dentistes.
* **Période d'analyse :** 2010 – 2024 (Historique) & 2025 – 2036 (Modèle prédictif).

## 🔍 Principaux Constats & KPIs

### 1. Baisse Globale de la Densité Médicale

* **Tendances (2010 - 2024) :** La densité moyenne de médecins généralistes a chuté de **~84 à 74 pour 100 000 habitants**, tandis que la population française a augmenté (de 63M à >66,5M d'habitants).
* **File active (Nombre de patients uniques par médecin) :** Varie fortement selon la densité. Les zones en sous-effectif imposent une charge de travail nettement supérieure aux praticiens.

### 2. Disparités Territoriales Majeures (Top vs. Flop)

* 🟢 **Zones les mieux dotées (Top) :**
  * **Hautes-Alpes :** ~125 MG / 100k hab.
  * **Savoie :** ~106 MG / 100k hab.
  * **Pyrénées-Atlantiques :** ~104 MG / 100k hab.

* 🔴 **Zones en forte tension / Déserts médicaux (Flop) :**
  * **Seine-Saint-Denis :** ~44 MG / 100k hab. (file active > 2 200 patients/MG/an).
  * **Cher :** ~46 MG / 100k hab.
  * **Seine-et-Marne :** ~46 MG / 100k hab.

### 3. Facteurs Explicatifs (Structure par Âge & Renouvellement)

* **Vieillissement de la profession :** Dans les départements en tension (ex: Seine-Saint-Denis), la part des médecins proches de la retraite (60 ans et +) augmente fortement alors que la part des jeunes (< 35 ans) stagne ou baisse.
* **Taux de renouvellement ($T = \frac{\text{Arrivées}}{\text{Départs}}$) :**
  * **Hautes-Alpes :** Tendance orientée à la hausse ($T > 1$), assurant la relève.
  * **Seine-Saint-Denis :** Tendance orientée à la baisse ($T < 1$), aggravant le déficit.

### 4. Spécialistes & Effet de Cumul

* Une forte corrélation positive ($r > 0.90$) est observée entre la rareté des généralistes et la rareté des spécialistes (ophtalmologues, dermatologues, dentistes). Les déserts médicaux touchent l'ensemble de la chaîne de soin.

## 🔮 Projections à l'horizon 2036

Grâce aux modèles prédictifs intégrés, l'étude anticipe l'évolution des densités de 2025 à 2036 pour identifier les futurs territoires critiques et évaluer l'impact à long terme de la fin du *Numerus Clausus*.

## 💡 Recommandations & Axes de Solution

1. **Politiques Publiques :** Réévaluation de la répartition géographique post-Numerus Clausus.
2. **Initiatives Locales :** Incitations financières et création de maisons de santé pluriprofessionnelles dans les départements prioritaires.
3. **Modernisation :** Déploiement de la télé-médecine et réorganisation du temps médical.

## 📂 Structure du Répertoire

```
.
├── Dr Téou.pptx.pdf        # Support de présentation officiel (PDF)
├── README.md               # Documentation du projet
└── ...
```

## 🛠️ Installation et Utilisation

1. **Cloner le projet :**
   ```bash
   git clone https://github.com/zinebaknin-png/Presentation-DrTeou-Projet-fin-bootcamp-LeWagon.git
   cd Presentation-DrTeou-Projet-fin-bootcamp-LeWagon
   ```
