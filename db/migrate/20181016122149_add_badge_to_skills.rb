class AddBadgeToSkills < ActiveRecord::Migration[5.2]
  def change
    add_column :skills, :bagde, :text
  end
end
