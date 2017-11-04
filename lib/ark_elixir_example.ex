defmodule ArkElixirExample do
    def main(argv) do
        {options, _, _} = OptionParser.parse(argv,
            switches: [address: :string],
            aliases: [a: :address]
        )
        try do
            IO.inspect Ark_Elixir.Account.get_balance(options[:address])
        rescue
            e in RuntimeError -> e
            IO.puts e.message
        end
    end
end
