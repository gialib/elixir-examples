defmodule FetcherExamples.ZhihuFetcherTest do
  use ExUnit.Case

  alias FetcherExamples.ZhihuFetcher

  test "fetch home page" do
    result = ZhihuFetcher.fetch_home!

    %{
      title: title
    } = result

    assert title == "知乎 - 与世界分享你的知识、经验和见解"
  end

  test "fetch_explore! page" do
    result = ZhihuFetcher.fetch_explore!

    %{
      title: title,
      recommend_post_urls: recommend_post_urls
    } = result

    assert title == "发现 - 知乎"
    assert length(recommend_post_urls) == 4
  end
end
