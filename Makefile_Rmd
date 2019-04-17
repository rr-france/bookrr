MD_FILE_LIST=index.md \
     01_preambule.md \
     02_RR_kezako.md \
     03_vis_ma_vie.md \
     04_questions_cauchemars_recurrents.md \
     05_acquisition_des_donnees.md \
     06_hypothese_de_recherche.md \
     07_donnees_d_entree.md \
     08_aspects_computationnels.md \
     09_donnees_de_sortie.md \
     10_introduction_partie_3.md \
     11_collecte_des_donnees.md \
     12_format_des_donnees.md \
     13_outils_de_gestion_de_version.md \
     14_apprendre_a_programmer.md \
     15_rendre_son_code_comprehensible.md \
     16_eviter_les_bugs.md \
     17_environnement_logiciel.md \
     18_licence_et_privacy.md \
     19_annexes.md \
     20_Conventions_ecriture.md 

RMD_FILE_LIST=$(patsubst %.md,%.Rmd,$(MD_FILE_LIST))

%.Rmd: %.md
	ln -sf $^ $@

Rmd: $(RMD_FILE_LIST)
