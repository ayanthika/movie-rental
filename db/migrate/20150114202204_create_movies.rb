class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.float :rating
      t.string :genre
      t.string :status

      t.timestamps
    end
  end
end
