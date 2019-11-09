class CreateTheatres < ActiveRecord::Migration[6.0]
  def change
    create_table :theatres do |t|
      t.string :name, default: false
      t.string :street, default: false
      t.string :state, default: false
      t.string :city, default: false
      t.string :zip, default: false
      
      t.timestamps
    end
  end
end
