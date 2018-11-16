defmodule ChessHallWeb.PageController do
  use ChessHallWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
