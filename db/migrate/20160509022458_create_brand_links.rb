class CreateBrandLinks < ActiveRecord::Migration
  def change
    create_table :brand_links do |t|
      t.references :brand, index: true, foreign_key: true
      t.string :name
      t.text :url
      t.text :mobile_url

      t.timestamps null: false
    end
  end
end
