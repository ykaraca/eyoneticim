class AddBlokRefToDaires < ActiveRecord::Migration[7.0]
  def change
    add_reference :daires, :blok, null: false, foreign_key: true
  end
end
