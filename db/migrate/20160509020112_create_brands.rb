class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.string :url
      t.string :mobile_url
      t.timestamps null: false
    end
  end
end
