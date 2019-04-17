# Format des données

La recherche reproductible est largement basée sur une minimisation des
interventions manuelles dans le flot de production des résultats à
partir des données d'entrée. Le maître mot dans le choix d'un format
de stockage des informations est "lisibles par la machine". 
On devrait dire "lisible par toutes les machines", pour éviter les
idiosyncrasies des différents système d'exploitation.
Cette règle s'applique aux données, mais également aux noms des
fichiers, comme nous le verrons par la suite [Chap. 13].

De cette démarche seront donc exclus:

* les formats fermés/propriétaires pour lesquels le risque de perte
  de lisibilité n'est pas maîtrisé par l'utilisateur. 
  
* le format binaire, qui supporte mal la transition entre les
  systèmes d'exploitation et les architectures matérielles.
  Certains formats de fichier prévus à cet effet permettent
  l'archivage en binaire de manière transparente (hdf5)

* 
