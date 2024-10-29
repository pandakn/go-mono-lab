# Go Monorepo Lab 🧪

Welcome to the Go Monorepo Lab (PoC Go Monorepo)! 🎉 This repository contains multiple Go microservices structured in a monorepo format.


## Getting Started🌱

To get started with the project, you'll need to have Go installed on your system. Once you have Go installed, you can clone the repository and use the provided Makefile to run the services.

```bash
git clone https://github.com/your-username/go-monorepo-lab.git

cd go-monorepo-lab
```

Feel free to explore the codebase, add new services, and customize the project to fit your needs.

## Let's Get This Service Rolling 🚀

You can use the provided Makefile to run a specific service:

```bash
make run service=<service_name>
```

For example, to run the `blogs` service:

```bash
make run service=blogs
```

Replace `<service_name>` with the name of the service you want to run, such as `products`, `orders`, or `payments`.

The Makefile includes the following targets:

- `help`: Displays usage instructions.
- `run`: Runs a specified service. It checks if the service directory exists in `./services` before attempting to run the service.

## Project Structure👀

```
go-monorepo-lab/
│
├── pkg
│   ├── logger
│   │   └── logger.go
│   └── go.mod
├── services
│   ├── blogs
│   │   ├── cmd
│   │   │   └── main.go
│   │   └── go.mod
│   └── users
│       ├── cmd
│       │   └── main.go
│       └── go.mod
├── Makefile
├── README.md
└── go.work
```

1. **Makefile 🛠️**: This file contains build and run instructions for the project, making it easy to manage the different services.
2. **README.md 📄**: This file provides an overview and instructions for the project.
3. **go.work 🗂️**: This file is used for managing the Go workspace in a monorepo setup.
4. **pkg 📦**: This directory contains shared packages or modules used across the services, in this case, a `logger` package.
5. **services 🧩**: This directory is where the individual microservices are located. Each service has its own directory, containing a `cmd` folder with the `main.go` file and a `go.mod` file for module dependencies.
