class CreateMyopinions < ActiveRecord::Migration[5.2]
  def change
    create_table :myopinions do |t|
      t.text :body
      t.string :image_id
      t.integer :user_id
      t.string :title

      t.timestamps
    end
  end
end
