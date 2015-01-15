class AddColumnsToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :movie_name, :string
    add_column :rentals, :checkout_date, :date
  end
end
