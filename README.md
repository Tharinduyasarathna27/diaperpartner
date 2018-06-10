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

## Development without Docker

### Environment and database

1. Clone the repository by typing into the command line:
`git clone git@github.com:rubyforgood/diaperpartner.git`

2. Copy `.env.example` to `.env` by running `cp .env.example .env`

3. Update the Database URL to your username and password, and change `@postgres` to `@localhost`

*Example:* `DATABASE_URL=postgresql://username:password@localhost:5432/diaperpartner?encoding=utf8&pool=5&timeout=5000`

4. Run `rake db:setup` to create and migrate the database

5. Run the rails server and go to `localhost:3000`

**note:** To see local logs without using Docker, comment out the following lines in `application.rb`
```
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.log_tags  = %i[subdomain uuid]
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
```

### Seed the database
From the root of the app, run `bundle exec rake db:seed`. This will create some initial data to use while testing the app and developing new features, including setting up the default user.

### Login
To login, use these default credentials:

    Organization Admin
      Email: test@example.com
      Password: password

    Super Admin
      Email: testadmin@example.com
      Password: password


## License

[MIT](./LICENSE)


---