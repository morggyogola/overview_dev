defmodule OverviewWeb.UserJSON do
  alias Overview.Accounts.User
  alias Overview.Posts.Post

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{data: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{data: data(user)}
  end

  defp data(%User{} = user) do
    %{
      id: user.id,
      name: user.name,
      email: user.email,
      posts: for(post <- user.posts, do: post_data(post))
    }
  end

  defp data(%Post{} = post) do
    %{
      id: post.id,
      body: post.body,
      title: post.title
    }
  end
end
