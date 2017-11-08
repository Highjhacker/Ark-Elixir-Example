defmodule ArkElixirExample do

    def main(argv) do
        argv
        |> parse_args
    end

    def parse_args(args) do
        parsed_args = OptionParser.parse(args, switches: [help: :boolean, address: :string, search: :string],
                                            aliases: [h: :help, a: :address, s: :search])
           case parsed_args do
             {[help: true], _, _} -> help()
             {[address: address], _, _} -> IO.inspect Ark_Elixir.Account.get_balance(address)
             {[search: query], _, _} -> IO.inspect Ark_Elixir.Delegate.search_delegates([q: query])
             _ -> :help
           end
    end

    def help do
        IO.puts "Help of ArkElixirExample !\n-h --help for help\n-a --address validArkAddress for watching the balance of an account\n-s --search 'delegate' for searching a delegate."
    end

end
