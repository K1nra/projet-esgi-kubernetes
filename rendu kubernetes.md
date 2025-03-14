Rendu Final Projet Kubernetes

Yann CHABAY—LEBLANC

5SRC2

On commence par forker et cloner le repo

![Une image contenant texte, capture d’écran, logiciel, Logiciel multimédia Le contenu généré par l’IA peut être incorrect.](media/31a23445daa7729e8506c9e3117c06dc.png)

![Une image contenant texte, capture d’écran, Police Le contenu généré par l’IA peut être incorrect.](media/0b07d5c226ab3fc82191c000a9f9eecf.png)

Ensuite, comme je suis sur une nouvelle machine j’installe k3s

![Une image contenant texte, Appareils électroniques, capture d’écran, logiciel Le contenu généré par l’IA peut être incorrect.](media/0c1f65a3eed0e7920c40c6faaa401db7.png)

et je commence à écrire mon dockerfile

![Une image contenant texte, Appareils électroniques, capture d’écran, affichage Le contenu généré par l’IA peut être incorrect.](media/1d869fb8cf2bdb79c3efd52bdbfe506c.png)

Une fois écrit on build

![Une image contenant texte, capture d’écran, document, Police Le contenu généré par l’IA peut être incorrect.](media/0ac4997af2d9ca14b4e4f41ab8f07265.png)

Après avoir vérifié que notre image est bonne on va créé une autre image pour la base de données.  
Je renomme mon Dockerfile en Dockerfile.old pour qu’il n’y ai pas d’interférence et je refais un Dockerfile :

![Une image contenant texte, Police, capture d’écran Le contenu généré par l’IA peut être incorrect.](media/f45527d717830183e9235b0a34a09e16.png)

Je build mon image

![Une image contenant texte, capture d’écran, reçu, document Le contenu généré par l’IA peut être incorrect.](media/b620592554623da951ae390d6e3acabe.png)

Ayant eu des problèmes, j’ai refait et voici mon docker images final :

![](media/3e2b321366df5614915c5af9374243aa.png)

Maintenant on se log sur docker et on tag les images pour les push

![Une image contenant texte, capture d’écran, Police, noir et blanc Le contenu généré par l’IA peut être incorrect.](media/d71a6e6d54c71efae4ef0f302ce6d61d.png)

Une fois pushées, on créé le docker-compose.yml

![Une image contenant texte, capture d’écran, Police, document Le contenu généré par l’IA peut être incorrect.](media/9406db336307fcd1349be2c876ada8cb.png)

Et on lance tout ça

![Une image contenant texte, capture d’écran, Police Le contenu généré par l’IA peut être incorrect.](media/6365168e400e570e3ba0aaff76cc9a74.png)

En faisant docker logs paymybuddy-backend on a ça donc ça fonctionne :

![Une image contenant texte, Police, document, capture d’écran Le contenu généré par l’IA peut être incorrect.](media/27986815da907554f1225964a913a7a8.png)

Maintenant on créé le configmap.yaml

![Une image contenant texte, capture d’écran, affichage, logiciel Le contenu généré par l’IA peut être incorrect.](media/9156184fac1687baa74071895fa089b5.png)

On créé un secret.yaml

![Une image contenant texte, capture d’écran, affichage, logiciel Le contenu généré par l’IA peut être incorrect.](media/5e38d84f40939585c6961a0bc7b5dd91.png)

On utilise internet pour coder en base64

On créé le mysql-deployment.yaml

![Une image contenant texte, capture d’écran, logiciel, affichage Le contenu généré par l’IA peut être incorrect.](media/347c81eb959786dee0a206a3ae6a8b55.png)

On créé aussi le backend-deployment.yaml

![Une image contenant texte, capture d’écran Le contenu généré par l’IA peut être incorrect.](media/4c321c4a54a96608b6731c39bfd64aa0.png)

Et on déploie ces ressources :

![Une image contenant texte, Police, capture d’écran, blanc Le contenu généré par l’IA peut être incorrect.](media/e80c74abcdb33565295a7757759c9894.png)
