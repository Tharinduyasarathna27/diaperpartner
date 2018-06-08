# Diaper Partner

> Diaper banks don't distribute diapers directly to individuals, instead they distribute them to partner agencies who work directly with families. This diaper bank application we build (diaperbase) handles inventory management for diaper banks but is missing the component to handle the partner agencies.
>
> This application is for the creation of partner agencies, collection of the partner agency details, allow the partners to enter details on the clients (the children receiving diapers), and for allowing partners to make diaper requests from their affiliated diaper bank.

-- Extracted from the [notes](https://gist.github.com/seanmarcia/3fcd7f0155ce559a7c698061a1323f34) of [Sean](https://gist.github.com/seanmarcia)

See https://github.com/rubyforgood/diaperpartner/wiki for a full description.


## Development with Docker

### Prerequisites

- [Docker CE](https://store.docker.com/search?type=edition&offering=community)

### Environment and database

First create the .env with `cp .env.docker-example .env`. You shouldn't have to make any changes to the .env file. Now set up the database with `docker-compose run web rails db:setup`. This command may fail as postgres creates it's database on first run, just run it again.

### Starting the app

Simply run `docker-compose up web` and visit [http://localhost:3001](http://localhost:3001)

## License

[MIT](./LICENSE)
