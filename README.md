PokéLibrary
===================
PokéLibrary is a *Pokémon* team manager tool. Uses `Facebook` api as login tool, so you won't need to setup an email server for this.
This tool is using [Pokémon-Showdown](https://github.com/Zarel/Pokemon-Showdown)'s data (abilities, moves, itens and *pokémons*).

Using Ruby  2.2.1

Using Rails  4.2.0

----------

To run a instance of this Rails Project, you need to generate/edit these files:

### - config/application.yml
`Figaro` gem uses it to ensure the safety of your facebook keys. Run:

    $ figaro install

 And then you can add your Facebook app id and secret:


    facebook_app_id: "your-ap-id-here"
	facebook_app_secret: "your-app-secret-here"
	devise_secret_key: "put in here your devise secret key"

### - config/database.yml

If you don't want to test the app on your machine, but you want to deploy it on Heroku (for example), you won't need this file.


You should add here the configuration to acess your database. Since I used PostgreSQL, my configuration is like this:

      default: &default
      adapter: postgresql
      encoding: utf8
      pool: 5
      username: *your-postgresql-username-here*
      password: *your-postgresql-password-here*
      host: *you should input the address of your database here*
      port: 5432

    development:
      <<: *default
      database: PokeLibrary_development

    test:
      <<: *default
      database: PokeLibrary_test

    production:
      <<: *default
      database: PokeLibrary_production
      username: PokeLibrary
      password: <%= ENV['POKELIBRARY_DATABASE_PASSWORD'] %>

### - config/secrets.yml

1. Use `rake secrets' to generate your new keys and paste them to secrets.yml

2. Restart your server.

