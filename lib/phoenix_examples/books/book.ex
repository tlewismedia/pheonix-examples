defmodule PhoenixExamples.Books.Book do
  use Ecto.Schema
  import Ecto.Changeset

  schema "books" do
    field :pages, :integer
    field :title, :string
    field :color, :string

    timestamps()
  end

  @doc false
  def changeset(book, attrs) do
    book
    |> cast(attrs, [:title, :pages, :color])
    |> validate_required([:title, :pages])
  end
end
