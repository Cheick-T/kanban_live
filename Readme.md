# Django Docker Deployment
Installer avec les commandes suivantes
```
openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out localhost.crt -keyout localhost.key
```

Exécuter avec la commande suivante:

```
docker-compose up --d
```

Pour régénérer les fichiers statiques:
```
docker-compose exec web python manage.py collectstatic --no-input
```
