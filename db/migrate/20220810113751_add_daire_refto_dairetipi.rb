class AddDaireReftoDairetipi < ActiveRecord::Migration[7.0]
  def change
    add_reference :daires, :dairetipi, foreign_key: true
  end
end
