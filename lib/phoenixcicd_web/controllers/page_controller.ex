defmodule PhoenixcicdWeb.PageController do
  use PhoenixcicdWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
