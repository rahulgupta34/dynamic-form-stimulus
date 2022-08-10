class AddHobbyToNames < ActiveRecord::Migration[7.0]
  def change
    add_column :names, :hobby, :string, array: true, default: []
  end
end
