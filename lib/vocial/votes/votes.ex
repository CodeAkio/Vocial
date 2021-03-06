defmodule Vocial.Votes do
  import Ecto.Query, warn: false

  alias Vocial.Repo
  alias Vocial.Votes.Poll
  alias Vocial.Votes.Option

  def list_polls do
    Repo.all(Poll) |> Repo.preload(:options)
  end
 end
