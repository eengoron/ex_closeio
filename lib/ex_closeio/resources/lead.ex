defmodule ExCloseio.Lead do
  import ExCloseio.Base
  alias ExCloseio.ResultStream
  @url_part "/lead/"

  def all(params, api_key \\ :global) do
    get(@url_part, api_key, params)
  end

  def paginate(params, api_key \\ :global) do
    ResultStream.new(params, api_key, @url_part) |> Enum.to_list
  end

  def find(id, api_key \\ :global) do
    get(@url_part <> id, api_key)
  end

  def create(params, api_key \\ :global) do
    post(@url_part, api_key)
  end

  def update(id, params, api_key \\ :global) do
    put(@url_part <> id, api_key, params)
  end

  def destroy(id, api_key \\ :global) do
    delete(@url_part <> id, api_key)
  end

  def merge(source_id, destination_id, api_key \\ :global) do
    post(@url_part <> "merge/", %{source: source_id, destination: destination_id}, api_key)
  end

end