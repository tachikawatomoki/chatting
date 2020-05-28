class CreateOpinions < ActiveRecord::Migration[5.2]
  def change
    create_table :opinions do |t|
      t.string :title
      t.text :body
      t.string :image_id

      t.timestamps
    end
  end
end
