# Docker-Crud

Docker-Crud es un proyecto que demuestra cómo construir y desplegar una aplicación CRUD (Crear, Leer, Actualizar, Eliminar) utilizando Node.js, Express, MongoDB y GraphQL, todo dentro de contenedores Docker. Este proyecto utiliza Docker Compose para orquestar los servicios y simplificar el despliegue.

## Integrantes del equipo:
- Eduardo Godinez Santana
- Cesar Eduardo Atempa Basilio
- José Armando Moras Moras
- Daniela Carvajal García

## Contenidos

- [Descripción](#descripción)
- [Tecnologías](#tecnologías)
- [Requisitos](#requisitos)
- [Instalación](#instalación)
- [Uso](#uso)
- [Estructura del Proyecto](#estructura-del-proyecto)
- [API](#api)
- [Contribuir](#contribuir)
- [Licencia](#licencia)

## Descripción

Este proyecto tiene como objetivo proporcionar una guía práctica para desarrollar una aplicación CRUD con Node.js, Express, MongoDB y GraphQL, y desplegarla utilizando Docker. La aplicación permite la gestión de usuarios mediante una interfaz GraphQL y expone endpoints para crear, leer, actualizar y eliminar usuarios.

## Tecnologías

- Node.js
- Express
- MongoDB
- Mongoose
- Apollo Server (GraphQL)
- Docker
- Docker Compose

## Requisitos

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Instalación

1. Clona el repositorio:
   ```sh
   git clone https://github.com/tu-usuario/Docker-Crud.git
   cd Docker-Crud
   ```

2. Crea un archivo `.env` en la raíz del proyecto con las siguientes variables de entorno:
   ```env
   MONGO_INITDB_ROOT_USERNAME=eduardo
   MONGO_INITDB_ROOT_PASSWORD=12345
   ```

3. Construye y levanta los servicios utilizando Docker Compose:
   ```sh
   docker-compose up --build
   ```

## Uso

1. La aplicación se ejecutará en `http://localhost:4000`.
2. La interfaz de usuario se servirá en `http://localhost:4004`.

Para acceder a la interfaz de GraphQL, abre `http://localhost:4000/graphql`.

## Estructura del Proyecto

```
Docker-Crud/
├── client/
│   └── index.html
├── server/
│   ├── app.js
│   ├── schema.graphql
│   ├── resolvers.js
│   ├── models/
│   │   └── user.js
│   └── .env
├── docker-compose.yml
├── Dockerfile
└── README.md
```

## API

### Consultas

- **getAllUsers**: Obtiene todos los usuarios.
  ```graphql
  query {
    getAllUsers {
      id
      name
      email
    }
  }
  ```

- **getUserById**: Obtiene un usuario por su ID.
  ```graphql
  query {
    getUserById(id: "USER_ID") {
      id
      name
      email
    }
  }
  ```

### Mutaciones

- **createUser**: Crea un nuevo usuario.
  ```graphql
  mutation {
    createUser(name: "Nombre", email: "email@domain.com", password: "password") {
      id
      name
      email
    }
  }
  ```

- **updateUser**: Actualiza un usuario existente.
  ```graphql
  mutation {
    updateUser(id: "USER_ID", name: "Nuevo Nombre", email: "nuevoemail@domain.com", password: "newpassword") {
      id
      name
      email
    }
  }
  ```

- **deleteUser**: Elimina un usuario por su ID.
  ```graphql
  mutation {
    deleteUser(id: "USER_ID")
  }
  ```
