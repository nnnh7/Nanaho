class AddUserIdToIces < ActiveRecord::Migration[6.1]
  def change
    add_column :ices, :user_id, :integer
  end
end
