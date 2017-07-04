defmodule Recommenjion.PageController do
  use Recommenjion.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
