# Proyecto Integrador DevOps: Servicio de Reserva de Horas Médicas

Este repositorio contiene la solución técnica automatizada y containerizada para la plataforma web de **Reserva de Horas Médicas** del Centro Médico VitalSalud, desarrollada bajo la metodología y ciclo de vida DevOps.

---

## 📁 Estructura del Repositorio

```
reserva-medica/
├── .github/
│   └── workflows/
│       └── devops_automation.yml  # Pipeline Integración Continua (GitHub Actions)
├── src/
│   ├── index.html                 # Interfaz de usuario para reserva de horas
│   └── styles.css                 # Hojas de estilo responsive
├── .env.example                   # Plantilla declarativa de variables de entorno
├── .gitignore                     # Archivos excluidos del control de versiones
├── Dockerfile                     # Receta de empaquetado Nginx Alpine
├── docker-compose.yml             # Orquestador local de Infraestructura como Código
└── README.md                      # Documentación técnica del proyecto
```

---

## 🚀 Guía de Despliegue Local

### Prerrequisitos
* Docker Desktop instalado y en ejecución.
* Git instalado.

### Pasos para Ejecutar el Servicio

1. **Clonar el repositorio:**
   ```bash
   git clone <url-del-repositorio>
   cd reserva-medica
   ```

2. **Configurar variables de entorno:**
   ```bash
   cp .env.example .env
   ```

3. **Desplegar el servicio mediante Docker Compose:**
   ```bash
   docker compose up -d
   ```

4. **Acceder a la plataforma:**
   Abre tu navegador e ingresa a: `http://localhost:8080`

---

## 📊 Monitoreo y Verificación de la Operación

Para auditar el estado del contenedor desplegado:

* **Verificar estado del contenedor:**
  ```bash
  docker compose ps
  ```

* **Inspeccionar registros (Logs) del servidor:**
  ```bash
  docker logs reserva_medica_app
  ```

* **Monitorear consumo de recursos (CPU / Memoria):**
  ```bash
  docker stats reserva_medica_app --no-stream
  ```

---

## 🛠️ Trazabilidad del Ciclo de Vida DevOps

| Fase | Herramienta / Artefacto | Propósito |
| :--- | :--- | :--- |
| **Plan** | GitHub Issues / Projects | Gestión y asignación de historias de usuario. |
| **Code** | Git, `.gitignore`, `.env.example` | Control de versiones y aislamiento de secretos. |
| **Build & Test** | `Dockerfile`, GitHub Actions | Compilación automatizada y pruebas de integración. |
| **Release** | GitHub Pull Requests & Release Tags | Aprobación de versiones estables (`v1.0.0`). |
| **Deploy & Operate** | `docker-compose.yml` (Port 8080) | Infraestructura declarativa y ejecución de Nginx. |
| **Monitor** | `docker logs`, `docker stats` | Observabilidad y mejora continua del servicio. |
