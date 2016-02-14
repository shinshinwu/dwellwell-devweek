class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string  :name
      t.string  :program_name
      t.string  :email
      t.string  :phone
      t.string  :line_1
      t.string  :line_2
      t.string  :city
      t.string  :state
      t.string  :zipcode

      t.timestamp
    end

  end
end
