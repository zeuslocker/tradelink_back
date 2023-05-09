class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations, id: :uuid do |t|
      t.string :title, null: false
      t.datetime :start, null: false
      t.datetime :finish, null: false

      t.timestamps
    end
  end
end
