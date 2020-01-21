defmodule PhoenixExamples.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_examples,
    adapter: Ecto.Adapters.Postgres

  import Ecto.Query

  # alias PhoenixExamples.{Page}

  # def new_page, do: Page.changeset(%Page{})

  # def insert_page(attrs) do
  #   %Page{}
  #   |> Page.changeset(attrs)
  #   |> insert()
  # end

  # def get_page(id) do
  #   get!(Page, id)
  # end
end
