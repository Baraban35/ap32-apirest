## Obtenir tous les contacts d'une organisation spécifiée par son numéro
### URI
```plaintext
GET /organisations/:numeroOrganisation/contacts
```

### Paramètres d'URL
| Propriété                | Type           | Description                   |
|--------------------------|----------------|-------------------------------|
| `:numeroOrganisation`    | integer        | numéro de l'organisation      |

### Réponse
En cas de succès, retourne [`<200>`](./api.md#status-codes) et la réponse suivante :

| Propriété                | Type           | Description                   |
|--------------------------|----------------|-------------------------------|
| `message`                | string         | Ok                            |
| `data`                   | Object array   | Tableau d'objets contact      |

Chaque objet organisation présente les propriétés suivantes :
```json
{
    "id": entier,
    "numeroOrganisation" : entier,
    "nom": string,
    "prenom": string,
    "email": string,
    "tel": string,
    "fonction": string,
    "_selfLink" : string
}
```
La propriété `_selfLink` donne un lien vers le détail du contact.
### Requête exemple avec succès - code statut 200

```shell
curl --url "http://host/path/organisations/25/contacts"
```

Fournit une réponse http avec code statut 200 et le corps de réponse json suivant :
```json
{
  "message": "OK",
  "data": [
      {
         "id": 1,
         "numeroOrganisation" : 25,
         "nom": "Farminot",
         "prenom": "Samia",
         "email": "samia.farminot@groupeavril.com",
         "tel": null,
         "fonction": "Responsable informatique",
         "_selfLink": "http://host/path/organisations/25/contacts/1
      },
      {
         "id": 2,
         "numeroOrganisation" : 25,
         "nom": "Merlu",
         "prenom": "Pierre",
         "email": "pierre.merlu@groupeavril.com",
         "tel": null,
         "fonction": "Responsable informatique",
         "_selfLink": "http://host/path/organisations/25/contacts/2"
      },
    ...
    ] 
}
```

## Obtenir un contact spécifié d'une organisation donnée

### URI
```plaintext
GET /organisations/:numeroOrganisation/contacts/:idContact
```

### Paramètres
| Propriété                | Type           | Description                   |
|--------------------------|----------------|-------------------------------|
| :numero                  | integer        | numéro de l'organisation      |
| :idContact               | integer        | id du contact                 |

### Réponse
En cas de succès, retourne [`<200>`](rest/api.md#status-codes) et la réponse suivante :

| Propriété                | Type           | Description                   |
|--------------------------|----------------|-------------------------------|
| `message`                | string         | Ok                            |
| `data`                   | Object         | Objet contact                 |

Un objet contact présente les propriétés suivantes :
```json
{
    "id": entier,
    "numeroOrganisation" : entier,
    "nom": string,
    "prenom": string,
    "email": string,
    "tel": string,
    "fonction": string
}
```
### Requête exemple avec succès - code statut 200
```shell
curl --url "http://host/path/organisations/25/contacts/1"
```

Fournit une réponse http avec code statut 200 et le corps de réponse json suivant :
```json
{
    "message": "OK"
    "data": {
         "id": 1,
         "numeroOrganisation" : 25,
         "nom": "Farminot",
         "prenom": "Samia",
         "email": "samia.farminot@groupeavril.com",
         "tel": null,
         "fonction": "Responsable informatique"
    }
}
```
### Requête exemple avec échec - code statut 404 - Numéro organisation invalide
Le code statut 404 est retourné si le numéro d'organisation demandé ou id de contact est inexistant ou invalide.

```shell
curl --url "http://host/path/organisations/abc/contacts/8"
```

Fournit une réponse http avec code statut 404 et le corps de réponse json suivant :
```json
{
    "message": "Ressource invalide ou inexistante",
}
```
### Requête exemple avec échec - code statut 404 - Id contact invalide
Le code statut 404 est retourné si le numéro d'organisation ou id de contact demandé est inexistant ou invalide.

```shell
curl --url "http://host/path/organisations/25/contacts/1fg"
```

Fournit une réponse http avec code statut 404 et le corps de réponse json suivant :
```json
{
    "message": "Ressource invalide ou inexistante",
}
```
### Requête exemple avec échec - code statut 404 - Numéro organisation inexistant
Le code statut 404 est retourné si le numéro d'organisation ou id de contact demandé est inexistant ou invalide.

```shell
curl --url "http://host/path/organisations/5000/contacts/8"
```

Fournit une réponse http avec code statut 404 et le corps de réponse json suivant :
```json
{
    "message": "Ressource invalide ou inexistante",
}
```
### Requête exemple avec échec - code statut 404 - Id de contact inexistant
Le code statut 404 est retourné si le numéro d'organisation ou id de contact demandé est inexistant ou invalide.

```shell
curl --url "http://host/path/organisations/25/contacts/10"
```

Fournit une réponse http avec code statut 404 et le corps de réponse json suivant :
```json
{
    "message": "Ressource invalide ou inexistante",
}
```
## Créer un contact d'une organisation spécifiée par son numéro
### URI
```plaintext
POST /organisations/:numeroOrganisation/contacts
```

### Paramètres d'URL
| Attribut             | Type           | Description                   |
|----------------------|----------------|-------------------------------|
| :numeroOrganisation  | integer        | numéro de l'organisation      |

### Données du payload - passées dans le corps de la requête au format JSON
| Propriété         | Type          | Description                            |
|-------------------|---------------|----------------------------------------|
| civilite          | string        | civilité du contact parmi M ou Mme     |
| nom               | string        | son nom                                |
| prenom            | string        | sonn prenom                            |
| email             | string        | son email                              |
| tel               | string        | son téléphone                          |
| fonction          | string        | sa fonction dans l'organisation        |

Toutes les données citées ci-dessus excepté tel et fonction doivent être présentes dans le payload.

### Réponse
En cas de succès, retourne [`<200>`](rest/api.md#status-codes) et la réponse suivante :

| Propriété                | Type           | Description                                           |
|--------------------------|----------------|-------------------------------------------------------|
| `message`                | string         | Contact d'id x dans organisation numéro y a été créé  |
| `data`                   | Object data    | Fournit des données sur la nouvelle ressource         |

L'objet data comporte les propriétés suivantes :
| Propriété                | Type           | Description                                         |
|--------------------------|----------------|-----------------------------------------------------|
| `_selfLink`              | string         | Lien absolu vers la nouvelle ressource              |

`
### Requête exemple avec succès - code statut 200 - données obligatoires et facultatives présentes
```shell
curl --url "http://host/path/organisations/1/contacts" --request POST --header "Content-type: application/json"
     --data "{\"civilite\": \"Mme\",
              \"nom\": \"Courtil\",
              \"prenom\": \"Martine\",
              \"email\": \"martine.courtil@groupeavril.com\",
              \"tel\": \"0299142536\",
              \"fonction\": \"Responsable d’applications\"
            }"
```

Fournit une réponse http avec code statut 200 et le corps de réponse json suivant :
```json
{
    "message": "Contact d'id 3 de l'organisation numéro 25 créé"
    "data": { "_selfLink" : "http://host/path/organisations/25/contacts/3" }
}
```
### Requête exemple avec succès - code statut 200 - données obligatoires présentes seulement
```shell
curl --url "http://host/path/organisations/1/contacts" --request POST --header "Content-type: application/json"
     --data "{\"civilite\": \"M\",
              \"nom\": \"Fournier\",
              \"prenom\": \"Ewen\",
              \"email\": \"ewen.fournier@groupeavril.com\"
            }"
```

Fournit une réponse http avec code statut 200 et le corps de réponse json suivant :
```json
{
    "message": "Contact d'id 4 de l'organisation numéro 25 créé"
    "data": { "_selfLink" : "http://host/path/organisations/25/contacts/4" }
}
```
### Requête exemple avec échec - code statut 404 - numéro organisation inexistant
Le code statut 404 est retourné si le numéro d'organisation demandé est inexistant ou invalide.

```shell
curl --url "http://host/path/organisations/10000/contacts" --request POST --header "Content-type: application/json"
     --data "{\"civilite\": \"M\",
              \"nom\": \"Brun\",
              \"prenom\": \"Serge\",
              \"email\": \"serge.brun@groupeavril.com\"
            }"
```

Fournit une réponse http avec code statut 404 et le corps de réponse json suivant :
```json
{
    "message": "Ressource invalide ou inexistante",
}
```
### Requête exemple avec échec - code statut 404 - numéro organisation invalide
Le code statut 404 est retourné si le numéro d'organisation demandé est inexistant ou invalide.

```shell
curl --url "http://host/path/organisations/10abf/contacts" --request POST --header "Content-type: application/json"
     --data "{\"civilite\": \"M\",
              \"nom\": \"Brun\",
              \"prenom\": \"Serge\",
              \"email\": \"serge.brun@groupeavril.com\"
            }"
```

Fournit une réponse http avec code statut 404 et le corps de réponse json suivant :
```json
{
    "message": "Ressource invalide ou inexistante",
}
```
### Requête exemple avec échec - code statut 400 - données obligatoires non renseignées
Le code statut 400 est retourné si les données du payload ne sont pas au format attendu.

```shell
curl --url "http://host/path/organisations/25/contacts" --request PUT --header "Content-type: application/json"
     --data "{\"civilite\": \"M\",
              \"email\": \"simone.gravier@groupeavril.com\",
              \"tel\": \"0299112233\"
            }"
```

Fournit une réponse http avec code statut 400 et le corps de réponse json suivant :
```json
{
    "message": "Les données fournies sont erronées",
    "erreurs" : ["Nom non renseigné, "Prénom non renseigné"]
}
```
### Requête exemple avec échec - code statut 400 - email non valide
Le code statut 400 est retourné si les données du payload ne sont pas au format attendu.

```shell
curl --url "http://host/path/organisations/25/contacts" --request PUT --header "Content-type: application/json"
     --data "{\"civilite\": \"M\",
              \"nom\": \"Brun\",
              \"prenom\": \"Serge\",
              \"email\": \"serge.brun\"
            }"
```

Fournit une réponse http avec code statut 400 et le corps de réponse json suivant :
```json
{
    "message": "Les données à modifier sont erronées",
    "erreurs" : ["Email invalide"]
}
```