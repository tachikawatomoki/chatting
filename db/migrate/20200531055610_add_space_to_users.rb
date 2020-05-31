class AddSpaceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :space, :string
  end
end
