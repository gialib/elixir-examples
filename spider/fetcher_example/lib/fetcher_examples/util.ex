defmodule FetcherExamples.Util do

  @default_headers [
    {"User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3047.0 Safari/537.36"}
  ]

  @doc """
  执行get抓取方法
  # opts 选项
  ```
  * :headers
  ```
  """
  def get!(url, params \\ %{}, opts \\ []) do
    headers =
      opts
      |> Keyword.get(:headers, [])
      |> Map.new
      |> Map.merge(Map.new(@default_headers))
      |> Map.to_list

    HTTPoison.get!(url, headers, Keyword.drop(opts, [:headers]))    
  end

  @doc """
  执行post抓取方法
  # opts 选项
  ```
  * :headers
  ```
  """
  def post!(url, body, opts \\ []) do
    headers =
      opts
      |> Map.new
      |> Map.merge(Map.new(@default_headers))
      |> Map.to_list

    HTTPoison.post!(url, body, headers, Keyword.drop(opts, [:headers]))    
  end
end
