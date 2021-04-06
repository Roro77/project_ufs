class CreateUserRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :user_requests do |t|
      t.integer :user_id
      t.datetime :date

      t.timestamps
    end
  end
end
