# Ark-Elixir-Example

A quick CLI application who can retrieve the balance of the specified Ark address.

## Built with
- [Elixir](https://elixir-lang.org/) (1.5.0)
- [Ark-Elixir](https://github.com/Highjhacker/Ark-Elixir)

## Installation

First you need to fetch the dependencies

```elixir
def deps do
  [
    {:ark_elixir, "~> 0.1.1"}
  ]
end
```

Then you need to build them

```shell
$ mix deps.get
```


And add this line in your mix.exs for escript
```elixir
def project do
  [
    app: :ark_elixir_example,
    version: "0.1.0",
    elixir: "~> 1.5",
    start_permanent: Mix.env == :prod,
    escript: [main_module: ArkElixirExample], # This line
    deps: deps()
  ]
end

```

## Usage

You can run the example like this :

```shell
$ mix escript.build
>> Generated escript ark_elixir_example with MIX_ENV=dev

./ark_elixir_example -a Acxb4Wxt2oUsXVViHJsenMuRDUjsMHHKeM                                                   
>> %{"balance" => "112013970754", "success" => true,
    "unconfirmedBalance" => "112013970754"}
```


## Authors

- Jolan Beer - Highjhacker

## License

Ark_Elixir is under MIT license. See the [LICENSE file](https://github.com/Highjhacker/Ark-Elixir/blob/master/LICENSE) for more informations.
