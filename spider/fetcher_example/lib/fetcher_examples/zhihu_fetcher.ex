defmodule FetcherExamples.ZhihuFetcher do
  @moduledoc """
  练习抓取知乎的页面
  """

  @base_uri "https://www.zhihu.com"

  def fetch_home!(_opts \\ []) do
    url = @base_uri <> "/"

    case FetcherExamples.Util.get!(url, %{}) do
      %HTTPoison.Response{body: body, status_code: 200} ->
        title = Floki.find(body, "head title") |> Floki.text

        %{
          title: title
        }
      _ -> :fail
    end
  end

  def fetch_explore!(_opts \\ []) do
    url = @base_uri <> "/explore"

    case FetcherExamples.Util.get!(url, %{}) do
      %HTTPoison.Response{body: body, status_code: 200} ->
        title = Floki.find(body, "head title") |> Floki.text
        recommend_post_urls =
          body
          |> Floki.find("#zh-recommend-list .feed-item .post-link")
          |> Floki.attribute("a", "href")

        %{
          title: title,
          recommend_post_urls: recommend_post_urls
        }
      _ -> :fail
    end
  end
end
