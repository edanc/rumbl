defmodule Rumbl.Repo.Migrations.AddCategoryIdToVidoe do
  use Ecto.Migration

  def change do
    alter table(:videos) do
      add :category_id, references(:categories)
    end

  end
end
