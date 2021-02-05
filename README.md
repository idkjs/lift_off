# LiftOff Elixir Server

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Install Node.js dependencies with `npm install` inside the `assets` directory
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
# Create the project

```bash
mix phx.new lift_off --app lift_off --module LiftOff --no-webpack
```

# Create the DB

```bash
mix ecto.create
```
# Generate contexts, schemas, and migrations for Track resource

# The Track Schema we want to add
```graphql
  type Track {
    id: ID!
    title: String!
    author: Author!
    thumbnail: String
    length: Int
    modulesCount: Int
  }
```
```bash
mix phx.gen.context Account Person people first_name:string last_name:string username:string email:string
```

Note that we havent used any descriptions saying it should nullable or not.
```bash
mix phx.gen.context Tracks Track tracks \
    title:string \
    author:string \
    thumbnail:string \
    length:integer \
    modulesCount:integer
```

