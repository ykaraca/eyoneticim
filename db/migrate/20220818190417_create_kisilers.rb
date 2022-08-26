class CreateKisilers < ActiveRecord::Migration[7.0]
  def change
    create_table :kisilers do |t|
      t.string :adsoyad
      t.string :telefon
      t.string :eposta
      t.text :adres
      t.string :sifre
      t.string :tcno
      t.date :dogumtarihi
      t.string :meslek

      t.timestamps
    end
  end
end
