class CreateGiderkategoris < ActiveRecord::Migration[7.0]
  def change
    create_table :giderkategoris do |t|
      t.string :aciklama

      t.timestamps
    end
  end
end
