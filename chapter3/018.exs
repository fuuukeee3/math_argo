defmodule Main do
  def main do
    _n = Acl.Input.get_n()

    Acl.Input.get_n_list()
    |> solve()
    |> IO.puts()
  end

  defp solve(n_list) do
    counts =
      Enum.reduce(n_list, %{100 => 0, 200 => 0, 300 => 0, 400 => 0}, fn i, acc ->
        Map.update(acc, i, 1, &(&1 + 1))
      end)

    counts[100] * counts[400] + counts[200] * counts[300]
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
