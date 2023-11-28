# Guide de configuration du serveur de recette US22 pour AP32
**Objectif** : Mettre en place un serveur de recette US22 pour tester l'API-REST de gestion des stages.

**Ressources** : 
- la fiche technique de création d'une VM sous VMWare à partir d'un modèle, [ici](https://siovhblyceebasch-my.sharepoint.com/personal/vhbsio_lycee-basch_fr/Documents/VHBSIO/_Etudiants/SIO_Commun/20232024_SIO_Commun_Ressources/DocumentationTechnique/FermeServeurs_VMWare/FT_esx_vmware_modele_creerMV.docx),
- sous VMWare, le modèle de VM us22_web hébergeant Ubuntu Server 22.04 avec les services ssh, apache2, php et mariadb activés.

## Création de la VM US22_WEB sous VMWare
Le serveur US22_WEB correspondra à une machine virtuelle hébergée sur la suite VSphere.

Procédure à suivre, détail dans la fiche technique sous OneDrive :
- Demander à accéder au vcenter en saisissant l'URL [https://352009u-srv-vct.352009u.local](https://352009u-srv-vct.352009u.local)
- Se connecter sous vcenter en renseignant votre login et mot de passe du domaine local
- Ouvrir l'inventaire et se déplacer dans `CD1 / VM-ELEVES / Modeles`
- Créer une VM ayant pour nom `VotreNom_US22_WEB` à partir du modèle `Modele_us22_web`
- Choisir l’emplacement `VM_ELEVES/SIO2_23/SLAM` pour le stockage de la nouvelle VM
- Demander ensuite à modifier les paramètres de la VM pour sélectionner 1GO pour la RAM et VLAN SIO2 SLAM pour l'adaptateur réseau.
- Démarrer la VM et se connecter sous le nom stssio / stssio.

## Configuration de la VM US22_WEB
### Passer en mode d'adressage IP statique
L'objectif est de pouvoir atteindre le serveur `US22_WEB` des postes du réseau SIO et vice-versa. 

Le mode d'accès réseau sous VMWare équivalent au mode pont sous Vbox correspond à l’adaptateur réseau VLAN_SIO2_SLAM. 

Les VMS Linux sous VMWare affectent le nom `ens160` et non `enp0s3` à la carte réseau. 

Passer la configuration réseau IP de votre serveur US22_WEB en mode statique sur l'adresse IP 100.115.29.175+x / 23, x de 1 à 12 par ordre alphabétique des noms d'étudiants option SLAM. Ne pas oublier la configuration de la passerelle et du serveur DNS.

Vérifier la communication réseau IP entre la machine hôte et le serveur `US22_WEB` et ceci dans les 2 sens. 

Vérifier que la résolution de noms soit bien opérationnelle, en particulier pour l'hôte `fr.archive.ubuntu.com`.
### Installer votre base de données
Importer les différents scripts SQL pour créer compte, base de données et structure des tables, lignes des organisations. 

Vérifier la bonne exécution des scripts SQL. 

Vérifier la connexion du compte `userStages` et ses droits d'accès sur la base de données `stages`.

### Installer Composer et l'extension intl de PHP
- Demander à mettre à jour les paquets.
- Demander à installer composer.
- Demander à voir la version courante de composer.
- Demander à voir la version courante l'interpréteur php.
- Vérifier que l'extension `intl` a bien été installée par la commande :
  ```bash
  php -m | grep intl
   ```
- Décommenter la ligne `extension=intl` dans le fichier `/etc/php/8.1/apache2/php.ini` puis relancer le service apache2.

### Vous authentifier sur la plateforme Gitlab
Une nouvelle paire de clés SSH va être utilisée pour vous authentifier à partir de votre serveur de recette. Votre serveur de recette étant facilement accessible sur le réseau sio, il est recommandé de protéger votre clé privée par mot de passe.

Se positionner à la racine du répertoire personnel du compte stssio

Générer une paire de clés RSA par la commande suivante en fournissant une phrase secrète pour protéger votre clé privée. 
```bash
ssh-keygen -t rsa –b 2048 –C "Key ServeurRecette"
```

Vérifier que 2 fichiers `id_rsa` et `id_rsa.pub` sont désormais présents dans le sous-répertoire `/home/stssio/.ssh`

Copier ces 2 fichiers sous le répertoire `/root/.ssh` pour que cette clé privée soit également utilisée lorsque les commandes seront exécutées pour le compte `root`.

Récupérer via winscp le fichier `id_rsa.pub` et coller son contenu dans une nouvelle clé publique SSH de votre profil Gitlab. 

Vérifier par la commande ssh que la nouvelle paire de clés permette de vous authentifier sous Gitlab. Si pas de réponse, lancer le script ./secure.sh pour vous authentifier sur le domaine et ainsi autoriser les flux sécurisés.

Lors de la première demande, il vous sera demandé d'accepter l’empreinte de clé publique du serveur gitlab. La saisie de  la phrase secrète de votre clé privée sera elle demandée lors de chaque authentification.
 
### Récupérer votre branche du dépôt gitlab de groupe
De manière identique à la récupération du dépît sous xampp de W10, vous allez "descendre" votre branche du dépôt sous le répertoire de publication du site web par défaut d'apache2.

Se positionner sous le répertoire de publication du site web par défaut `/var/www/html`.

Demander à cloner votre branche du dépôt de groupe par la commande :
```bash
sudo git clone URLsshVotreDepot --branch nomBranche nomRepertoire
```
L'argument `nomRepertoire` est à utiliser si vous souhaitez récupérer le dépôt sous un nom de répertoire différent de celui de votre dépôt sous Gitlab. On supposera par la suite que ce nouveau répertoire se nomme `ap32-stages-apirest`.

Suite au clonage, vérifier la présence et le contenu répertoire `ap32-stages-apirest`.

Se positionner dans ce nouveau répertoire, et vérifier que votre branche est active.

Lancer la commande suivante pour installer codeigniter4 sous vendor :
```bash
sudo composer install --no-dev  
```
Justifier l'utilisation de l'option `--no-dev`.

Faire en sorte que le groupe `www-data` soit propriétaire du répertoire `ap32-stages-apirest` et de ses sous-répertoires.

Donner les droits d'écriture au groupe propriétaire sur le sous-répertoire `writable` et ses sous-répertoires.

Copier le fichier `env` dans un fichier `.env`.

Adapter les lignes suivantes dans le nouveau fichier `.env` suivant vos données de configuration : 
```php
app.baseURL = 'http://@IPServeur/cheminServeur/public' 
hostname = nomHote
database = nomBD
username = nomCompteMySql
password = mspCompteMySql
```
Très probablement, la connexion SSL n'aboutira pas, car le flux https n'est autorisé par le parefeu du lycée que si ce flux a été soumis à authentification. Pour ce faire, transférer le script `secure.sh` présent dans le répertoire Outils communs des ressources de classe par connexion ssh via l'outil winscp. Le rendre exécutable, puis le lancer pour saisir vos identifiants sur le domaine 352009u.local. 

### Accéder à l'API-REST hébergée sur votre serveur de recette
Sur la machine hôte, invoquer l'API-REST et demander à voir la liste des organisations. 

Si l’API-REST ne fonctionne pas, et en particulier affiche la page suivante : 
![codeigniter_whoops](./images/codeigniter_whoops.png)

Voici une première checklist des points à vérifier : 
- Vérifier le contenu des logs d’Apache `/var/log/apache2/error.log`
- Vérifier le contenu des logs de Code Igniter `./writable/logs`
- Vérifier la permission d’écrire sur le répertoire `writable` et ses sous-répertoires pour le groupe propriétaire `www-data`
- Dans le fichier `.env`, vérifier les valeurs des paramètres de connexion à la base de données. Ils doivent être ajustés à la casse près 
- Vérifier la présence et le contenu du répertoire `vendor`

Si les liens aboutissent à un site inaccessible, vérifier le paramètre `app.baseUrl` du fichier `.env`

Il peut rester une opération qui aboutisse à une page non trouvée. A vous d’enquêter ! 
![codeigniter_pagenotfound](./images/codeigniter_pagenotfound.png)

Voir aussi [ici](https://includebeer.com/fr/blog/la-checklist-des-choses-a-verifier-quand-votre-application-web-codeigniter-4-ne-fonctionne-pas) 

## Sécuriser l'environnement d'exécution en production
L'emplacement actuel de l'API-REST permet d'accéder au sous-répertoire `public` et par là-même au fichier index.php, contrôleur principal de l'API-REST. Cependant, il est aussi possible d'accéder aux autres sous-répertoires à moins qu'ils ne soient bloqués par une directive telle que `Deny from all`, ce qui est le cas pour le sous-répertoire app, mais pas vendor, ni test, ni .git.

Il apparaît donc intéressant de fournir une URL `ap32` référençant directement un sous-répertoire qui se trouvera dans un sous-répertoire de `/var/www`, et non plus sous `/var/www/html`.

Voici la procédure à suivre :
1. Déplacer le sous-répertoire `/var/www/html/ap32-stages-apirest` et son contenu sous le répertoire `/var/www`.
2. Vérifier et réappliquer si besoin l'appartenance du répertoire `/var/www/ap32-stages-apirest` et de son contenu au groupe `www-data` ainsi que le droit d'écriture du sous-répertoire `writable` et de son contenu au groupe `www-data`
3. Adapter la directive `app.baseURL` du fichier `.env`
4. Ajouter les lignes suivantes en fin de directive `VirtualHost` dans le fichier `/etc/apache2/sites-available/000-default.conf`
```bash
Alias /ap32 /var/www/ap32-stages-apirest/public
<Directory "/var/www/ap32-stages-apirest/public">
    AllowOverride all
    Require all granted
</Directory>
```
1. Redémarrer le service apache2
2. Ajuster les variables d'environnement `GestionStages-Prod` sous Talend, puis repasser quelques tests sur l'API-REST ainsi hébergée