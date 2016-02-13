class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.references :dwelling
      t.references :user

      t.timestamp
    end

  end
end