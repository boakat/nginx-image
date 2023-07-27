# créer une image nginx et l'envoyer vers le hub Docker.

**Etape 1 : Créez les fichiers et les dossiers**
     
Créez un dossier nommé **nginx-image** et son sous dossier **Files**

> mkdir nginx-image && cd mkdir

> mkdir Files

Créez un fichier **.dockerignore**

> touch .dockerignore

**Etape 2 : Créez un exemple de fichiers HTML et un fichier de configuration**

Faitez **cd** dans le dossier **Files**

> cd Files

Créez un fichier **index.html**

> vim index.html

Copiez son contenu (voir le fichier index.html) et enregistrez le .

Créez un fichier nommé default et copiez son contenu (default ) et enregistrez le .

**Etape 3 : Choisissez l'image**
> base : ubuntu:18.04

 Créez un fichier Dockerfile dans le dossier nginx-image 
> vim Dockerfile
 Voici le simple contenu pour notre cas d'utilisation Dockerfile

> voir **le fichier Dockerfile**

**Etape 4 : Créez notre premier image docker**

 La commande ci-dessous généra l'image à partir du même repertoire **Dockerfile**

> docker build -t nginx:1.0 .

Maintenant ,nous pouvons repertorier les images en utilisant cette commande 

> docker images 

**Etape 4 : Testez l'image**

Maintenant , après avoir construit l'image ,nous allons executer l'image Docker la commande sera :

> docker run -d -p 9090:80 --name webserver nginx:1.0

Maintenant , allez dans le navigateur et ecrivez **http://<host_ip>:9090**

**Etape 5 : Envoyer l'image vers Dockerhub**

Pour envoyer notre image Docker vers le hub docker ,nous devons avoir un compte sur docker hub 

Une fois que nous avons le compte on fait en CLI de notre machine 

> docker login

Après la connexion , nous devons maintenant **marquer notre image avec le noù d'utilisateur docker** comme indiqué ci-dessous :

> docker tag nginx:1.0 <username>/<image-name>:tag
> Exemple : docker tag nginx:1.0 boidieric/image_name:1.0

Maintenant nous pouvons pousser notre image vers le hub Docker à l'aide de la commande ci-dessous :

> docker push boidieric/nginx:1.0

 

  
