defmodule MarthaWeb.PageController do
  use MarthaWeb, :controller

  def index(conn, _params) do
    text conn, "hello, martha"
  end
end
