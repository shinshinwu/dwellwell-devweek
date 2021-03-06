class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :race
      t.string     :email,              null: false
      t.string     :password_digest
      t.string     :username
      t.string     :gender
      t.date       :dob
      t.string     :first_name
      t.string     :last_name
      t.string     :ssn
      t.string     :line_1
      t.string     :line_2
      t.string     :city
      t.string     :state
      t.string     :zipcode
      t.integer    :monthly_income
      t.string     :source_of_income
      t.integer    :monthly_rent
      t.integer    :estimated_utilities
      t.string     :phone_home
      t.string     :phone_work
      t.boolean    :is_veteran
      t.boolean    :is_service_man
      t.boolean    :is_mobility_impaired
      t.boolean    :is_hearing_impaired
      t.boolean    :is_sight_impaired
      t.boolean    :claim_disability
      t.boolean    :has_hud_violation
      t.boolean    :lived_in_ph_before
      t.boolean    :has_criminal_activity
      t.boolean    :owe_money_to_ha
      t.boolean    :is_sex_offender


      t.timestamps
    end

  end
end
