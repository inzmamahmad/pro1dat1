class CreateComts < ActiveRecord::Migration[5.2]
  def change
    create_table :comts do |t|
      t.string :name

      t.timestamps
    end
  end
end
