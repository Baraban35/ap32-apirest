# Bonnes pratiques sur la structure d'une base de données
25
## Conventions pour le nommage des tables, colonnes et contraintes :
1. Il n’y a pas de blanc ni de caractère accentué dans les noms de table ou de colonne.
2. Chaque nom de table commence par une majuscule et est suivi de minuscules. S’il est
composé de plusieurs mots, ceux‐ci sont collés et distingués par une majuscule. Pour des
raisons de lisibilité, le nom des tables est écrit en caractères gras.
3. Chaque nom de colonne est écrit en minuscule. S’il est composé de plusieurs mots, ils sont
collés et distingués par une majuscule. Le nom choisi pour l’attribut figure le rôle de son
domaine dans la relation.
4. On privilégiera « id » comme nom de colonne identifiant d’une relation ou « code » ; «
numero » sera utilisé uniquement si il s’agit d’un champ numérique (cependant une
approche par le rôle est à privilégier à une approche par le type).
5. Une clef étrangère porte un nom significatif de son rôle dans la table.
6. Excepté les contraintes NULL et not NULL, les contraintes seront préfixées par le type de la contrainte suivi d'un sous-tiret puis du nom de table, éventuellement terminé par le nom de colonne dans cette table.
7. Chaque nom de table et/ou de colonne correspond bien à son contenu.

Exemples : 
1. PK_CONTACT - nom de contrainte exprimant la ou les colonnes qui constituent la  clé primaire
2. FK_JOUERROLE_CONTACT - nom de contrainte exprimant la contrainte d'intégrité référentielle de la table JOUER_ROLE
3. CK_CONTACT_CIVILITE - nom de contrainte exprimant le domaine de valeurs restreint comprenant les valeurs IL, ELLE.

## Autres vérifications à réaliser
1. vérifier la pertinence des identifiants de tables, réels ou auto-incrémentés,
2. vérifier l'absence de redondance de données,
3. vérifier l'absence de données polysèmes. Si besoin, les conserver après justification. Sinon les renommer