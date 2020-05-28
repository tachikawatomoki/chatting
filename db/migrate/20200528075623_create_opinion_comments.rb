class CreateOpinionComments < ActiveRecord::Migration[5.2]
  def change
    create_table :opinion_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :opinion_id

      t.timestamps
    end
  end
end
