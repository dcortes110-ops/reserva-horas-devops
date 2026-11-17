# Reserva de Horas Médicas – Proyecto DevOps (Clínica Salud Vital, entidad ficticia)

Sitio web **estático** que simula un formulario de reserva de horas médicas, servido con **Nginx** dentro de **Docker**.
Proyecto integrador de la asignatura DevOps (IACC). No incluye API ni base de datos.

## Requisitos
- Git
- Docker Desktop iniciado y funcionando
- Navegador web
- (Opcional) Visual Studio Code

## Estructura
```
proyecto-devops/
├── src/
│   ├── index.html
│   └── styles.css
├── Dockerfile
├── docker-compose.yml
├── .env.example
├── .gitignore
├── README.md
└── .github/workflows/devops-automation.yml   (opcional)
```

## Instalación
```bash
git clone https://github.com/<USUARIO>/<REPOSITORIO>.git
cd <REPOSITORIO>
cp .env.example .env        # opcional: en Windows use  copy .env.example .env
```

## Ejecución
```bash
docker compose up -d --build
```

## Verificación
```bash
docker compose ps                  # estado (debe aparecer "running"/"healthy")
docker ps                          # contenedor reserva-horas-web
curl http://localhost:8080         # o abrir http://localhost:8080 en el navegador
docker logs reserva-horas-web      # logs de Nginx
docker stats --no-stream           # consumo de CPU y memoria
```

## Detención
```bash
docker compose down
```

## Seguridad y manejo de información sensible
- No se publican credenciales, tokens, claves ni datos personales reales.
- Las variables de entorno se documentan en `.env.example` (solo marcadores, sin valores reales).
- El archivo `.env` real está excluido mediante `.gitignore`.
- El formulario es una simulación: no envía ni almacena datos.
- Antes de cada commit se revisa con `git status` y `git diff --staged`.

## Flujo de trabajo Git
`main` (estable) ← Pull Request ← `feature/*`. Commits pequeños y descriptivos; fusión a `main` solo tras revisión.
