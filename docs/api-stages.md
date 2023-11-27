## Obtenir tous les stages
### URI
```plaintext
GET /stages
```

### Paramètres d'URL
Aucun

### Réponse
En cas de succès, retourne [`<200>`](./api.md#status-codes) et la réponse suivante :

| Propriété                | Type           | Description                   |
|--------------------------|----------------|-------------------------------|
| `message`                | string         | Ok                            |
| `data`                   | Object array   | Tableau d'objets stage        |

Chaque objet stage présente les propriétés suivantes :
```json
{
    "id": entier,
    "numeroEtudiant": entier,
    "idPeriodeStage": entier,
    "descriptifMission": string,
    "moyens": string,
    "nvelleDateDebut": string,
    "nvelleDateFin" : string,
    "numeroOrganisation": entier,
    "_selfLink" : string
}
```
La propriété `_selfLink` donne un lien vers le détail du stage.

Les propriétés `nvelleDateDebut` et `nvelleDateFin` sont uniquement renseignées dans le cas où la propriété `idPeriodeStage` ne l’est pas. 
### Requête exemple avec succès - code statut 200
```shell
curl --url "http://host/path/stages"
```

Fournit une réponse http avec code statut 200 et le corps de réponse json suivant :
```json
{
  "message": "OK",
  "data": [
    {
        "id": 250,
        "numeroEtudiant": 5,
        "idPeriodeStage": 10,
        "descriptifMission": "Réalisation application web de suivi des contrats de maintenance logicielle",
        "moyens": "HTML/CSS/PHP/MariaDB/Gitlab ",
        "numeroOrganisation": 45,
        "_selfLink": "http://host/path/stages/250"
    },
    {
        "id": 255,
        "numeroEtudiant": 12,
        "idPeriodeStage": 10,
        "descriptifMission": "Réalisation d’un module Drupal de gestion",
        "moyens": "HTML/CSS/PHP/MariaDB/Gitlab ",
        "numeroOrganisation": 40,
        "_selfLink": "http://host/path/stages/2"
    },

    },
    ...
    ] 
}
```

## Obtenir un stage spécifié par son numéro
### URI
```plaintext
GET /stages/:numero
```

### Paramètres
| Propriété                | Type           | Description                   |
|--------------------------|----------------|-------------------------------|
| :numero                  | integer        | numéro du stage               |

### Réponse
En cas de succès, retourne [`<200>`](rest/api.md#status-codes) et la réponse suivante :

| Propriété                | Type           | Description                   |
|--------------------------|----------------|-------------------------------|
| `message`                | string         | Ok                            |
| `data`                   | Object         | Objet stage                   |

Un objet stage présente les propriétés suivantes :
```json
{
    "id": entier,
    "numeroEtudiant": entier,
    "idPeriodeStage": entier,
    "descriptifMission": string,
    "moyens": string,
    "nvelleDateDebut": string,
    "nvelleDateFin" : string,
    "numeroOrganisation": entier,
}
```
### Requête exemple avec succès - code statut 200
```shell
curl --url "http://host/path/stages/250"
```

Fournit une réponse http avec code statut 200 et le corps de réponse json suivant :
```json
{
    "message": "OK",
    "data": {
        "id": 250,
        "numeroEtudiant": 5,
        "idPeriodeStage": 10,
        "descriptifMission": "Réalisation application web de suivi des contrats de maintenance logicielle",
        "moyens": "HTML/CSS/PHP/MariaDB/Gitlab ",
        "numeroOrganisation": 45,
        "nvelleDateDebut": null,
        "nvelleDateFin": null,
    }
}
```
### Requête exemple avec échec - code statut 404
Le code statut 404 est retourné si le numéro de stage demandé est inexistant ou invalide.

```shell
curl --url "http://host/path/stages/5000"
```

Fournit une réponse http avec code statut 404 et le corps de réponse json suivant :

```json
{
    "message": "Ressource invalide ou inexistante",
}
```
## Créer un nouveau stage
### URI
```plaintext
POST /stages
```

### Paramètres d'URL
Aucun
### Données du payload - passées dans le corps de la requête au format JSON
| Propriété            | Type          | Description                                                     |
|---------------------|---------------|------------------------------------------------------------------|
| numeroEtudiant      | string        | numéro de l'étudiant effectuant le stage                         |
| numeroOrganisation  | integer       | numéro de l'organisation accueillant l'étudiant                  |
| idPeriodeStage      | integer       | id de la période du stage                                        |
| descriptifMission   | string        | descriptif de la mission                                         |
| moyens              | string        | moyens : équipements, systèmes, méthodes, outils                 |

Toutes les propriétés ci-dessus doivent être présentes dans le payload.

### Réponse
En cas de succès, retourne [`<200>`](rest/api.md#status-codes) et la réponse suivante :

| Propriété                | Type           | Description                                         |
|--------------------------|----------------|-----------------------------------------------------|
| `message`                | string         | Stage d'id x a été créé                             |
| `data`                   | Object data    | Fournit des données sur la nouvelle ressource       |

L'objet data comporte les propriétés suivantes :
| Propriété                | Type           | Description                                         |
|--------------------------|----------------|-----------------------------------------------------|
| `_selfLink`              | string         | Lien absolu vers la nouvelle ressource              |

`
### Requête exemple avec succès - code statut 200
```shell
curl --url "http://host/path/stages" --request POST --header "Content-Type: application/json"
     --data "{\"numeroEtudiant\":20, 
              \"numeroOrganisation\": 25,
              \"idPeriodeStage\": 10,
              \"descriptifMission\": \"Ecriture de tests IHM automatisés Espresso d’une application mobile\",
              \"moyens\": \"Java / Espresso / Gitlab\"}"
```

Fournit une réponse http avec code statut 201 et le corps de réponse json suivant :
```json
{
    "message": "Stage d'id 300 créé",
    "data": {
        "_selfLink": "http://host/path/stages/300",
    }
}
```
### Requête exemple avec échec - code statut 400 - Données non renseignées
Le code statut 400 est retourné si les données du payload sont invalides.

```shell
curl --url "http://host/path/stages" --request POST --header "Content-Type: application/json"
     --data "{\"numeroEtudiant\": 20, 
              \"numeroOrganisation\": 10
            }"
```

Fournit une réponse http avec code statut 400 et le corps de réponse json suivant :
```json
{
    "message": "Les données fournies sont erronées",
    "erreurs" : ["Descriptif mission non renseigné", "Moyens non renseignés"]
}
```
### Requête exemple avec échec - code statut 400 - Numéro étudiant invalide
Le code statut 400 est retourné si les données du payload sont invalides.

```shell
curl --url "http://host/path/stages" --request POST --header "Content-Type: application/json"
     --data "{\"numeroEtudiant\":"AB", 
              \"numeroOrganisation\": 25,
              \"idPeriodeStage\": 10,
              \"descriptifMission\": \"Ecriture de tests IHM automatisés Espresso d’une application mobile\",
              \"moyens\": \"Java / Espresso / Gitlab\"}"
```

Fournit une réponse http avec code statut 400 et le corps de réponse json suivant :
```json
{
    "message": "Les données fournies sont erronées",
    "erreurs" : ["Numéro étudiant invalide"]
}
```
### Requête exemple avec échec - code statut 400 - Période de stage inexistante
Le code statut 400 est retourné si les données du payload sont invalides.

```shell
curl --url "http://host/path/stages" --request POST --header "Content-Type: application/json"
     --data "{\"numeroEtudiant\":20, 
              \"numeroOrganisation\": 25,
              \"idPeriodeStage\": 500,
              \"descriptifMission\": \"Ecriture de tests IHM automatisés Espresso d’une application mobile\",
              \"moyens\": \"Java / Espresso / Gitlab\"}"
```

Fournit une réponse http avec code statut 400 et le corps de réponse json suivant :
```json
{
    "message": "Les données fournies sont erronées",
    "erreurs" : ["Période de stage inexistante"]
}
```
