class AddCallToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :call, :integer
  end
end
