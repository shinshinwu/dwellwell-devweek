class CreateDwellings < ActiveRecord::Migration
  def change
    create_table :dwellings do |t|
      t.references  :vendor
      t.string      :name
      t.string      :line_1
      t.string      :line_2
      t.string      :city
      t.string      :state
      t.string      :zipcode
      t.integer     :monthly_rent
      t.string      :photo_url
      t.boolean     :is_active, default: true

      t.timestamp
    end

  end
end