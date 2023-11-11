defmodule SuperSiteWeb.LightLive do
  use SuperSiteWeb, :live_view

  def mount(params, session, socket) do
    IO.inspect({params, session})

    socket =
      assign(socket, user: "wang jia")

    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    <h1>Welcome <%= @user %></h1>
    <h2>Some H2</h2>
    """
  end
end
