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

Naive Date Time (Date-time without timezone):

```elixir
> NaiveDateTime.from_iso8601("2015-01-23 23:50:07")
{:ok, ~N[2015-01-23 23:50:07]}
> NaiveDateTime.from_iso8601!("2015-01-23 23:50:07")
~N[2015-01-23 23:50:07]
> dt = %DateTime{year: 2000, month: 2, day: 29, zone_abbr: "CET",
>                hour: 23, minute: 0, second: 7, microsecond: {0, 0},
>                utc_offset: 3600, std_offset: 0, time_zone: "Europe/Warsaw"}
#DateTime<2000-02-29 23:00:07+01:00 CET Europe/Warsaw>
> NaiveDateTime.to_erl(dt)
{{2000, 2, 29}, {23, 0, 7}}
```

User Agent and Creator:

```elixir
> Flightex.start_agents()
{:ok, #PID<0.224.0>}
> user_params = Flightex.Factory.build(:user)
> Flightex.create_user(user_params)
{:ok, "6004ed71-219e-4203-934f-e780e0b77b3f"}
> Flightex.get_users
%{
  "6004ed71-219e-4203-934f-e780e0b77b3f" => %Flightex.Users.User{
    cpf: "1234567",
    email: "iggy@murderbusiness.org",
    id: "6004ed71-219e-4203-934f-e780e0b77b3f",
    name: "Iggy Azalea"
  }
}
```

Booking Agent and Creator:

```elixir

```

## Libs <a name = "libs"></a>

- https://github.com/rrrene/credo
- https://github.com/zyro/elixir-uuid
- https://github.com/bitwalker/timex
- https://github.com/thoughtbot/ex_machina

## Docs <a name = "docs"></a>

- https://elixir-lang.org/crash-course.html
- https://hexdocs.pm/elixir/NaiveDateTime.html#from_iso8601/2
- https://hexdocs.pm/elixir/Date.html#from_iso8601/2
- https://hexdocs.pm/elixir/Time.html#t:t/0
- https://hexdocs.pm/timex/getting-started.html
- https://hexdocs.pm/ex_machina/readme.html

## Resources <a name = "resources"></a>

- https://marketplace.visualstudio.com/items?itemName=pantajoe.vscode-elixir-credo
- https://stackoverflow.com/questions/51600416/elixir-add-timezone-data-to-naive-date-time
- https://stackoverflow.com/questions/40444970/how-to-convert-a-string-into-an-ecto-datetime-in-elixir
