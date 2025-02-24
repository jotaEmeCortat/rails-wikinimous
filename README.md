# Wikinimous

Project developed during the [Le Wagon](https://github.com/lewagon) BootCamp Full Stack.

## Objective

Build an anonymous wiki (like [this one](https://wikinimous.lewagon.com/)) where anyone can create a
new article or update an existing one.

## Setup

To set up the Rails Stupid Coaching application, follow these steps:

Clone the repository:

```sh
  git clone git@github.com:jotaEmeCortat/rails-wikinimous.git
  cd rails-wikinimous
```

Install dependencies: Make sure you have Ruby and Bundler installed. Then run:

```sh
  bundle install
```

Set up the database:

```sh
  rails db:create db:migrate db:seed
```

Start the Rails server:

```sh
  rails server
```

Access the application: Open your web browser and go to http://localhost:3000.

## Testing

To run the tests, use the following command:

```sh
  rails test:system
```

## Technologies Used

- Ruby on Rails
- Faker
- Bootstrap
