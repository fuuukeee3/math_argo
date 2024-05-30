defmodule Main do
  def main do
    n = Acl.Input.get_n()

    a = Acl.Input.get_n_list()
    b = Acl.Input.get_n_list()

    solve(a, b, n)
    |> IO.puts()
  end

  defp solve(a, b, n) do
    Enum.sum(a) / n + Enum.sum(b) / n
  end
end

defmodule Acl do
  defmodule Input do
    def get_n, do: IO.read(:line) |> String.trim() |> String.to_integer()

    def get_s, do: IO.read(:line) |> String.trim()

    def get_n_list,
      do: IO.read(:line) |> String.trim() |> String.split(" ") |> Enum.map(&String.to_integer/1)

    def get_s_list,
      do: IO.read(:line) |> String.trim() |> String.split(" ")

    def get_s_split, do: IO.read(:line) |> String.trim() |> String.codepoints()
  end
end

Main.main()
