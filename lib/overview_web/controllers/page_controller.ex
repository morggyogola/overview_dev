defmodule OverviewWeb.PageController do
  use OverviewWeb, :controller

  def home(conn, _params) do
    # The home page is often custom made,
    # so skip the default app layout.
    render(conn, :home, layout: false)
  end

  def users (conn, _params)do
    users=[
      %{id=>1,name=>"Philip",email=>"philipgor@gmail.com"},
      %{id=>2,name=>"Musa",email=>"musaj@gmail.com"}
    ]
    render(conn, :home)
  end
end
