defmodule PhoenixExamples.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :title, :string
      add :pages, :integer

      timestamps()
    end

  end
end
