class AddImageToIces < ActiveRecord::Migration[6.1]
  def change
    add_column :ices, :image, :string
  end
end
