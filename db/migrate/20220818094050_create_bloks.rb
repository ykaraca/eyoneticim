class CreateBloks < ActiveRecord::Migration[7.0]
  def change
    create_table :bloks do |t|
      t.string :blokadi

      t.timestamps
    end
  end
end
