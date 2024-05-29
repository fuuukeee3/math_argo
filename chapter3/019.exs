defmodule Main do
  def main do
    _n = Acl.Input.get_n()

    Acl.Input.get_n_list()
    |> solve()
    |> IO.puts()
  end

  defp solve(n_list) do
    colors =
      Enum.reduce(n_list, %{1 => 0, 2 => 0, 3 => 0}, fn a, acc ->
        Map.update(acc, a, 1, &(&1 + 1))
      end)

    red = div(colors[1] * (colors[1] - 1), 2)
    yellow = div(colors[2] * (colors[2] - 1), 2)
    blue = div(colors[3] * (colors[3] - 1), 2)

    red + yellow + blue
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
