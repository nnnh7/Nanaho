class AddQuestion2ToRecommends < ActiveRecord::Migration[6.1]
  def change
    add_column :recommends, :question2, :string
    add_column :recommends, :question3, :string
    add_column :recommends, :question4, :string
    add_column :recommends, :question5, :string
    add_column :recommends, :question6, :string
  end
end
