class AddMinutesToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :minutes, :integer
  end
end
