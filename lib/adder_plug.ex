defmodule AdditionService.AdderPlug do
  import Plug.Conn

  def init(default), do: default

  def call(conn, _opts) do
    conn
    |> fetch_query_params()
    |> do_call
  end

  defp do_call(%{params: params} = conn) do
    IO.inspect(params)
    with {:ok, a} <- extract_param(params, "a"),
         {:ok, b} <- extract_param(params, "b"),
         do: send_resp(conn, 200, Integer.to_string(a + b))
  end

  defp extract_param(params, key) do
    case Map.get(params, key) do
      nil ->
        {:error, "Missing parameter '#{key}'"}

      param ->
        case safe_to_integer(param) do
          {:ok, integer} -> {:ok, integer}
          {:error, _} -> {:error, "Invalid parameter '#{key}'"}
        end
    end
  end

  defp safe_to_integer(binary) when is_binary(binary) do
    case Integer.parse(binary) do
      {int, ""} -> {:ok, int}
      _ -> {:error, "Not a valid integer"}
    end
  end
end
