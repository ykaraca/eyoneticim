class CreateDaires < ActiveRecord::Migration[7.0]
  def change
    create_table :daires do |t|
      t.string :daireno
      t.string :kat
      t.string :brut
      t.string :net
      t.string :arsapayi
      t.integer :parksayisi
      t.integer :peteksatisi
      t.timestamps
    end
  end
end
