defmodule ExCloseio.Organization do
  @moduledoc """
    Organization handles communication with the organization related
    methods of the Close.io API.

    See http://developer.close.io/#organizations
  """

  import ExCloseio.Base
  @url_part "/organization/"

  def find(id, api_key \\ :global) do
    get(@url_part <> id, api_key)
  end

  def update(id, params, api_key \\ :global) do
    put(@url_part <> id, api_key, params)
  end
end
