class RemoveBagdeFromSkills < ActiveRecord::Migration[5.2]
  def change
    remove_column :skills, :bagde, :string
  end
end
