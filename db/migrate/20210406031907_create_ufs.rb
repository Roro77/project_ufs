class CreateUfs < ActiveRecord::Migration[5.2]
  def change
    create_table :ufs do |t|
      t.integer :value, null: false
      t.date :date, null: false

      t.timestamps
    end
  end
end
