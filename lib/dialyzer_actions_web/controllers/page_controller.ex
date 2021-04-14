defmodule DialyzerActionsWeb.PageController do
  use DialyzerActionsWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
