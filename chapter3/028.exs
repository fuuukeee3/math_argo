defmodule Main do
  def main do
    n = Acl.Input.get_n()
    h = Acl.Input.get_n_list()

    solve(n, h)
    |> IO.puts()
  end

  defp solve(n, h) do
    h = [0 | h]
    dp = List.duplicate(0, n + 1)

    dp =
      Enum.reduce(1..n, dp, fn i, dp ->
        cond do
          i == 1 ->
            dp

          i == 2 ->
            List.replace_at(dp, i, Enum.at(dp, i - 1) + abs(Enum.at(h, i) - Enum.at(h, i - 1)))

          true ->
            tmp1 = Enum.at(dp, i - 1) + abs(Enum.at(h, i) - Enum.at(h, i - 1))
            tmp2 = Enum.at(dp, i - 2) + abs(Enum.at(h, i) - Enum.at(h, i - 2))
            List.replace_at(dp, i, min(tmp1, tmp2))
        end
      end)

    List.last(dp)
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
