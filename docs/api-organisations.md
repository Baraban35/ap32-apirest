## Obtenir toutes les organisations
### URI
```plaintext
GET /organisations
```

### Paramètres d'URL
Aucun

### Réponse
En cas de succès, retourne [`<200>`](./api.md#status-codes) et la réponse suivante :

| Propriété                | Type           | Description                   |
|--------------------------|----------------|-------------------------------|
| `message`                | string         | Ok                            |
| `data`                   | Object array   | Tableau d'objets organisation |

Chaque objet organisation présente les propriétés suivantes :
```json
{
    "numero": entier,
    "nom": string,
    "idCategorie": entier,
    "libelleCategorie": string,
    "adresse": string,
    "codePostal": string,
    "ville": string,
    "tel": string,
    "fax": string,
    "email": string,
    "urlSiteWeb": string,
    "orgaAssurance": string,
    "numAssurance": string,
    "_selfLink" : string
}
```
### Requête exemple avec succès - code statut 200

```shell
curl --url "http://host/path/organisations"
```

Fournit une réponse http avec code statut 200 et le corps de réponse json suivant :
```json
{
  "message": "OK",
  "data": [
    {
      "numero": "1",
      "nom": "Rectorat de Rennes",
      "idCategorie": 1,
      "libelleCategorie": "Administrations, collectivités territoriales",
      "adresse": "96 rue d''Antrain",
      "codePostal": "35000",
      "ville": "Rennes",
      "tel": "0223217777",
      "fax": NULL,
      "email": NULL,
      "urlSiteWeb": NULL,
      "orgaAssurance": NULL,
      "numAssurance": NULL,
      "_selfLink": "http://host/path/organisations/1"
    },
    {
      "numero": "2",
      "nom": "IRISA",
      ...
      "email": NULL,
      ...
      "_selfLink": "http://host/path/organisations/2"
    },
    ...
    ] 
}
```

## Obtenir une organisation spécifiée par son numéro

### URI
```plaintext
GET /organisations/:numero
```

### Paramètres
| Propriété                | Type           | Description                   |
|--------------------------|----------------|-------------------------------|
| :numero                  | integer        | numéro de l'organisation      |

### Réponse
En cas de succès, retourne [`<200>`](rest/api.md#status-codes) et la réponse suivante :

| Propriété                | Type           | Description                   |
|--------------------------|----------------|-------------------------------|
| `message`                | string         | Ok                            |
| `data`                   | Object         | Objet organisation            |

Un objet organisation présente les propriétés suivantes :
```json
{
    "numero": entier,
    "nom": string,
    "idCategorie": entier,
    "libelleCategorie": string,
    "adresse": string,
    "codePostal": string,
    "ville": string,
    "tel": string,
    "fax": string,
    "email": string,
    "urlSiteWeb": string,
    "nomAssurance": string,
    "numeroContratAssurance": string,
    "_selfLink" : string
}
```
### Requête exemple avec succès - code statut 200
```shell
curl --url "http://host/path/organisations/1"
```

Fournit une réponse http avec code statut 200 et le corps de réponse json suivant :
```json
{
    "message": "OK",
    "data": {
        "numero": "1",
        "nom": "Rectorat de Rennes",
        "idCategorie": 1,
        "libelleCategorie": "Administrations, collectivités territoriales",
        "adresse": "96 rue d''Antrain",
        "codePostal": "35000",
        "ville": "Rennes",
        "tel": "0223217777",
        "fax": NULL,
        "email": NULL,
        "urlSiteWeb": NULL,
        "nomAssurance": NULL,
        "numeroContratAssurance": NULL
    }
}
```
### Requête exemple avec échec - code statut 404
Le code statut 404 est retourné si le numéro d'organisation demandé est inexistant ou invalide.

```shell
curl --url "http://host/path/organisations/1000"
```

Fournit une réponse http avec code statut 404 et le corps de réponse json suivant :

```json
{
    "message": "Ressource invalide ou inexistante",
}
```
## Mettre à jour les données d'une organisation spécifiée par son numéro
### URI
```plaintext
PUT /organisations/:numero
```

### Paramètres d'URL
| Attribut          | Type           | Description                   |
|-------------------|----------------|-------------------------------|
| :numero           | integer        | numéro de l'organisation      |

### Données du payload - passées dans le corps de la requête au format JSON
| Attribut          | Type          | Description                   |
|-------------------|---------------|-------------------------------|
| adresse           | string        | adresse de l'organisation     |
| cp                | string        | son code postal               |
| ville             | string        | sa ville                      |
| tel               | string        | son téléphone                 |
| email             | string        | son email                     |

Au moins un attribut parmi les 5 doit figurer dans le payload.

### Réponse
En cas de succès, retourne [`<200>`](rest/api.md#status-codes) et la réponse suivante :

| Propriété                | Type           | Description                                         |
|--------------------------|----------------|-----------------------------------------------------|
| `message`                | string         | Organisation de numéro :numero a été modifiée       |
| `data`                   | Object data    | Fournit des données sur la ressource  modifiée      |

L'objet data comporte les propriétés suivantes :
| Propriété                | Type           | Description                                         |
|--------------------------|----------------|-----------------------------------------------------|
| `_selfLink`              | string         | Lien absolu vers la ressource modifiée              |

`
### Requête exemple avec succès - code statut 200
```shell
curl --url "http://host/path/organisations/1" --request PUT --header "Content-type: application/json"
     --data {"email" : "contact@organisation.fr"}
```

Fournit une réponse http avec code statut 200 et le corps de réponse json suivant :
```json
{
    "message": "Organisation de numéro 1 a été modifiée",
    "data": {
        "_selfLink": "http://host/path/organisations/1",
    }
}
```
### Requête exemple avec échec - code statut 404
Le code statut 404 est retourné si le numéro d'organisation demandé est inexistant ou invalide.

```shell
curl --url "http://host/path/organisations/1000" --request PUT --header "Content-Type: application/json"
     --data "{\"email\" : \"contact@organisation.fr\"}"
```

Fournit une réponse http avec code statut 404 et le corps de réponse json suivant :
```json
{
    "message": "Ressource invalide ou inexistante",
}
```
### Requête exemple avec échec - code statut 400
Le code statut 400 est retourné si les données du payload ne sont pas au format attendu.

```shell
curl --url "http://host/path/organisations/1" --request PUT --header "Content-type: application/json"
     --data {"email" : "organisation.fr"}
```

Fournit une réponse http avec code statut 400 et le corps de réponse json suivant :
```json
{
    "message": "Les données à modifier sont erronées",
    "erreurs" : ["Email invalide"]
}
```
