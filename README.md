# Flightex

## Table of Contents

- [About](#about)
- [Bash Commands](#bash_commands)
- [Elixir Commands](#elixir_commands)
- [Libs](#libs)
- [Docs](#docs)
- [Resources](#resources)

## About <a name = "about"></a>

A demo Elixir program that uses `Structs` as `Data Transfer Objects`,
and `Agents` to persist state between precesses.

Challenge 5 of Ignite Elixir, a bootcamp by Rocket Seat.

## Bash Commands <a name = "bash_commands"></a>

```bash
# Create new Elixir project
$ mix new project_name
# Intall dependencies
$ mix deps.get
# Generate linter config
$ mix credo gen.config
# Run linter
$ mix credo --strict
# Start your project as an Interactive Elixir session
$ iex -S mix
# Run tests
$ mix test
```

## Elixir Commands <a name = "elixir_commands"></a>

Expected behavior:

```elixir
> Flightex.create_user(params)
{:ok, user_id}

> Flightex.create_booking(user_id, params)
{:ok, booking_id}

> Flightex.create_booking(invalid_user_id, params)
{:error, "User not found"}

> Flightex.get_booking(booking_id)
{:ok, %Booking{...}}

> Flightex.get_booking(invalid_booking_id)
{:error, "Flight Booking not found"}
```

## Libs <a name = "libs"></a>

- https://github.com/rrrene/credo
- https://github.com/zyro/elixir-uuid

## Docs <a name = "docs"></a>

- https://elixir-lang.org/crash-course.html
- https://hexdocs.pm/elixir/NaiveDateTime.html

## Resources <a name = "resources"></a>

- https://marketplace.visualstudio.com/items?itemName=pantajoe.vscode-elixir-credo
