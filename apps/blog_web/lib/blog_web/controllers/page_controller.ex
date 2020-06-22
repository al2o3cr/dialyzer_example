defmodule BlogWeb.PageController do
  use BlogWeb, :controller

  plug(:frob_things)

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def frob_things(conn, _params) do
    IO.puts("holla")

    %{conn | halted: false}
  end
end
