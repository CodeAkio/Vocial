defmodule VocialWeb.PollController do
  use VocialWeb, :controller

  def index(conn, _params) do
    polls = Vocial.Votes.list_polls()

    render(conn, "index.html", polls: polls)
  end

  def new(conn, _params) do
    poll = Vocial.Votes.new_poll()

    render(conn, "new.html", poll: poll)
  end

  def create(conn, %{"poll" => poll_params, "options" => options}) do
    split_options = String.split(options, ",")

    with {:ok, _poll} <- Votes.create_poll_with_options(poll_params, split_options) do
      conn
      |> put_flash(:info, "Poll created successfully!")
      |> redirect(to: Routes.poll_path(conn, :index))
    end
  end
end
