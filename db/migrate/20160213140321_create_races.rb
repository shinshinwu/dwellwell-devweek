class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string  :category
    end

  end
end
