# Mogrify Draw

A wrapper of the imagemagick draw functionality on top of mogrify

## Installation

Add this to your `mix.exs` file, then run `mix do deps.get, deps.compile`:

```elixir
def deps do
  [{:mogrify_draw, "~> 0.1.0"}]
end
```

```elixir
def application do
  [applications: [:mogrify_draw]]
end
```

## Examples


```elixir
import Mogrify

%Mogrify.Image{path: "test.png", ext: "png"}
|> custom("size", "280x280")
|> canvas("white")
|> custom("fill", "blue")
|> Mogrify.Draw.circle(140,140,100,100)
|> custom("fill", "yellow")
|> Mogrify.Draw.circle(140,140,140,100)
|> create(path: ".")
```

## License

Mogrify Draw source code is licensed under the [MIT License](LICENSE.md).
