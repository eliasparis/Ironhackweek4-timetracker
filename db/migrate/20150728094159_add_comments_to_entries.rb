class AddCommentsToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :comments, :text
  end
end
