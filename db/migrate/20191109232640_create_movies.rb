class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title, default: false
      t.string :show_time, default: false
      t.string :price, default: false
      t.belongs_to :theatre
      
      t.timestamps
    end
  end
end
