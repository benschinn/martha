defmodule MarthaWeb.PageController do
  use MarthaWeb, :controller

  def index(conn, _params) do
    json conn, get_recipe
  end

  def get_recipe() do
    case HTTPoison.get("https://www.allrecipes.com/recipe/14231/guacamole/") do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} -> 
        node = Floki.find(body, "h1#recipe-main-content")
        text = Floki.text(node)
        %{title: text}
      {:ok, %HTTPoison.Response{status_code: 404}} -> IO.puts "404: Not Found"
      {:error, %HTTPoison.Error{reason: reason}} -> IO.inspect reason
    end
  end 
end
