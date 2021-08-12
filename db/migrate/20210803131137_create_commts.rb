class CreateCommts < ActiveRecord::Migration[5.2]
  def change
    create_table :commts do |t|
      t.text :content
      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end
  end
end
