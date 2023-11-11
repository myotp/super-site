defmodule SuperSiteWeb.LightLive do
  # 不调用默认的layout
  # https://elixirforum.com/t/liveview-socket-put-root-layout-overwrite-root-layout/48878/2
  # 以及更现代Phoenix 1.7的写法
  use Phoenix.LiveView, layout: false

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
