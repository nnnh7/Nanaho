class AddOverallToIces < ActiveRecord::Migration[6.1]
  def change
    add_column :ices, :overall, :integer
  end
end
