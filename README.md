# ExCssHelper

This is the Elixir version of EXPLO's [CSS Helper](https://bitbucket.org/explo/explo-css-helper-js/) library. Generally it's preferred to use the JS library, but when using Phoenix LiveView it doesn't always place nice with the JS. It's also faster to keep CSS styles within Elixir :)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_css_helper` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_css_helper, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_css_helper](https://hexdocs.pm/ex_css_helper).


## Setup

Run `bin/fetch_styles` to grab the latest defaults into `lib/ex_css_helper/definitions.ex`.
