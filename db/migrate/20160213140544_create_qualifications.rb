class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.references :user
      t.references :agency

      t.timestamp
    end

  end
end