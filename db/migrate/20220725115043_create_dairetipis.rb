class CreateDairetipis < ActiveRecord::Migration[7.0]
  def change
    create_table :dairetipis do |t|
      t.string :aciklama

      t.timestamps
    end
  end
end
