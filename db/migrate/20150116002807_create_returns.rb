class CreateReturns < ActiveRecord::Migration
  def change
    create_table :returns do |t|
      t.integer :movie_id
      t.integer :user_id
      t.date :return_date
      t.string :film_name

      t.timestamps
    end
  end
end
