class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :name
      t.integer :train_id, index: true
      t.timestamps
    end
  end
end
