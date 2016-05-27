class CreateSkatePark < ActiveRecord::Migration[5.0]
  def change
    create_table :skate_parks do |t|
      t.string :name
      t.string :address
      t.string :suburb
      t.string :state
      t.string :postcode
      t.string :business_category
      t.string :lga
      t.string :region
    end
  end
end
