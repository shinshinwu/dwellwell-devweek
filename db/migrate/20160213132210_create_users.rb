class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :race
      t.string     :email,              null: false
      t.string     :password_digest
      t.string     :first_name
      t.string     :last_name
      t.string     :username
      t.integer    :monthly_income
      t.integer    :monthly_rent
      t.integer    :estimated_utilities
      t.string     :phone_home
      t.string     :phone_work
      t.boolean    :is_veteran
      t.boolean    :is_service_man
      t.boolean    :is_mobility_impared
      t.boolean    :is_hearing_impared
      t.boolean    :is_sight_impared
      t.boolean    :claim_disablity
      t.boolean    :has_hud_violation
      t.boolean    :lived_in_ph_before
      t.boolean    :has_criminal_activity
      t.boolean    :owe_money_to_ha
      t.boolean    :is_sex_offender


      t.timestamps
    end

  end
end
