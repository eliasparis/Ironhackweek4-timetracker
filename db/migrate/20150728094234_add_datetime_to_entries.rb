class AddDatetimeToEntries < ActiveRecord::Migration
  def change
    add_column :entries, :datetime, :date
  end
end
