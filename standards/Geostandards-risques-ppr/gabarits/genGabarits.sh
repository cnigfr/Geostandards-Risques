#!/bin/bash
# Génère les gabarits gpkg pour chacune des zones de projection couvertes à partir :
# - du fichier GPKG vide : typeppr_codegasparppr-vide.gpkg
# - du fichier SQL template de génération des tables du standard : typeppr_codegasparppr.sql


for srs_id in 2154 2975 4471 2972 4467 5490
do
  echo "Generating gabarits-$srs_id ..."
  cat typeppr_codegasparppr.sql | sed -e "s/\$SRS_ID/$srs_id/g" > $srs_id/typeppr_codegasparppr-$srs_id.sql
  cp typeppr_codegasparppr-vide.gpkg $srs_id/typeppr_codegasparppr-$srs_id.gpkg
  cd $srs_id
  echo "exec sqlite3 typeppr_codegasparppr-$srs_id.gpkg < typeppr_codegasparppr-$srs_id.sql"
  sqlite3 typeppr_codegasparppr-$srs_id.gpkg < typeppr_codegasparppr-$srs_id.sql
  cd ..
done
