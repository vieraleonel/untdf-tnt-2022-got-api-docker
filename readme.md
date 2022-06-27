# UNTDF TNT 2022
## API con personajes de GoT
Para iniciar hacer:
```bash
docker compose up
```
o
```bash
docker-compose up
```

## Servicios desplegados
- API: `https://localhost:3000`
- DB: Postgrest en el puerto 5432
- Adminer: `https://localhost:8080`. Se accede con user `app_user` y `password`
- Swagger: `https://localhost:8181` (documentación interactiva)

## Llamadas útiles
- Todos los personajes: `http://localhost:3000/characters`
- Todas las familias con sus personajes: `http://localhost:3000/families?select=id,name,characters(id,last_name,first_name,title)`
