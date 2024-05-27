# Présentation de la vulnérabilité [CWE-340](https://cwe.mitre.org/data/definitions/340.html)

Le concept de cette vulnérabilité est d'avoir un système de génération
aléatoire d'id beaucoup trop faible.

Dans l'exemple présenté ci-dessous, ce sont les id de pages qui sont linéaires,
c'est-à-dire que chaque page a un id qui est celui de la page précédente
incrémenté de 1.

Combiné avec une absence de sécurisation des pages censées rester privées, cela
permet très facilement à un attaquant d'accéder à des pages non référencées par
le reste du site.

## Le contexte

Accédez au [site du gouvernement](https://paul-ohl.github.io/CWE-340-Example/).
Vous y trouverez une liste de documents officiels publiques accessibles
librement.

En analysant les urls des différentes pages, pouvez-vous vous rendre compte de
comment accéder à des documents non listés sur la pages d'accueil?

## L'exploitation de la vulnérabilité

En modifiant l'url avec une valeur non présente dans la page principale, on
peut facilement accéder aux documents confidentiels privés non authorisés.
