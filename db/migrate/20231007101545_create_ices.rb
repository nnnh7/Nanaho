class CreateIces < ActiveRecord::Migration[6.1]
  def change
    create_table :ices do |t|
      t.string :name
      t.string :flavor
      t.text :review

      t.timestamps
    end
  end
end
