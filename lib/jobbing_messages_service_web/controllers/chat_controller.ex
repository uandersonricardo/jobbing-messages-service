defmodule JobbingMessagesServiceWeb.ChatController do
  use JobbingMessagesServiceWeb, :controller
  
  def index(conn, _params) do
    render(conn, "index.html")
  end
end
