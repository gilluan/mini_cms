defmodule MiniCmsWeb.PageController do
  use MiniCmsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
