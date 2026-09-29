SELECT * FROM `zinebakninsql.Teou.effectif_densite`;
SELECT * FROM `zinebakninsql.Teou.patientele`;
SELECT *FROM `zinebakninsql.Teou.densite`;
SELECT *FROM `zinebakninsql.Teou.effectif_densite_clean`;
SELECT *FROM `zinebakninsql.Teou.densite_patientele`;

-- renommer champs annee
ALTER TABLE `zinebakninsql.Teou.effectif_densite`
RENAME COLUMN `_annee` TO annee;

ALTER TABLE `zinebakninsql.Teou.patientele`
RENAME COLUMN `_annee` TO annee;


# Table demographie-effectifs-et-les-densites

-- EXCLURE “Tout âge"
SELECT libelle_classe_age 
FROM `zinebakninsql.Teou.effectif_densite`;
WHERE libelle_classe_age != "Tout âge";

-- EXCLURE "libelle_sexe"

SELECT libelle_sexe FROM `zinebakninsql.Teou.effectif_densite`;
WHERE libelle_sexe != "tout sexe";

-- EXCLURE "FRANCE"
SELECT libelle_region FROM `zinebakninsql.Teou.effectif_densite`;
WHERE libelle_region != "FRANCE";

-- EXCLURE "FRANCE"& "Tout département"
SELECT libelle_departement FROM `zinebakninsql.Teou.effectif_densite`;
WHERE libelle_departement != "FRANCE"  and libelle_departement != "Tout département"

-- EXCLURE "FRANCE"

SELECT profession_sante
FROM `zinebakninsql.Teou.effectif_densite`;
WHERE profession_sante NOT LIKE "Ensemble%";

-- EXCLURE toutes les agregations géja faites pour la table effectif_densite_clean

SELECT * 
FROM `zinebakninsql.Teou.effectif_densite`
WHERE libelle_classe_age != "Tout âge"
  AND libelle_sexe != "tout sexe"
  AND libelle_region != "FRANCE"
  AND libelle_departement NOT IN ("FRANCE", "Tout département")
  AND profession_sante NOT LIKE "Ensemble%";


# table patientele
 -- EXCLURE "Tout département"

SELECT libelle_departement FROM `zinebakninsql.Teou.patientele`
where libelle_departement !="Tout département";


-- EXCLURE "FRANCE"
SELECT libelle_region FROM `zinebakninsql.Teou.patientele`
WHERE libelle_region != "FRANCE";



--Suppression colonne nombre_patients_uniques et  nombre_patients_medecin_traitant
ALTER TABLE `zinebakninsql.Teou.patientele`
DROP COLUMN nombre_patients_uniques;


ALTER TABLE `zinebakninsql.Teou.patientele`
DROP COLUMN nombre_patients_medecin_traitant;


--renomer colonnes nombre_patients_uniques en patients_uniques_integer &  nombre_patients_medecin_traitant  patients_medecin_traitant_integer

ALTER TABLE `zinebakninsql.Teou.patientele`
RENAME COLUMN patients_uniques_integer TO nombre_patients_uniques;

ALTER TABLE `zinebakninsql.Teou.patientele`
RENAME COLUMN patients_medecin_traitant_integer TO  nombre_patients_medecin_traitant;

 -- Jointure 2 tables
SELECT 
  d.*,
  p.nombre_patients_uniques,
  p.nombre_patients_medecin_traitant
FROM `zinebakninsql.Teou.densite` d
LEFT JOIN `zinebakninsql.Teou.patientele` p
ON d.annee = p.annee
AND d.departement = p.departement
AND d.profession_sante = p.profession_sante
AND d.region = p.region;


 --Supprimer colonnes table demographie-effectifs-et-les-densites
ALTER TABLE `zinebakninsql.Teou.effectif_densite`;
DROP COLUMN `vision generale all`;

ALTER TABLE `zinebakninsql.Teou.effectif_densite`;
DROP COLUMN vision_generale_prescriptions;

ALTER TABLE `zinebakninsql.Teou.effectif_densite`;
DROP COLUMN `vision profession territoire`;

 --Supprimer colonnes table patientele
ALTER TABLE `zinebakninsql.Teou.patientele`
DROP COLUMN `vision generale all`;

ALTER TABLE `zinebakninsql.Teou.patientele`
DROP COLUMN vision_generale_prescriptions;

ALTER TABLE `zinebakninsql.Teou.patientele`
DROP COLUMN `vision profession territoire`;


-- creation table densité

SELECT * 
FROM `zinebakninsql.Teou.effectif_densite`;
WHERE libelle_classe_age = "Tout âge"
  AND libelle_sexe = "tout sexe";




