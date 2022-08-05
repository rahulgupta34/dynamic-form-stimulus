class CreateCsvData < ActiveRecord::Migration[7.0]
  def change
    create_table :csv_data do |t|
      t.string :name
      t.string :email
      t.integer :age
      
      t.timestamps
    end
  end
end
