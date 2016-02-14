class CreateQualifications < ActiveRecord::Migration
  def change
    create_table :qualifications do |t|
      t.references :user
      t.references :agency
      t.boolean    :is_qualified
      t.integer    :qualified_rent_amount
      t.integer    :voucher_amount

      t.timestamp
    end

  end
end