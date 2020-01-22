defmodule PhoenixExamples.Repo.Migrations.AddColorToBook do
  use Ecto.Migration

  def change do
    alter table(:books) do
      add :color, :string
    end
  end
end
