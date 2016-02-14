class CreateDependents < ActiveRecord::Migration
  def change
    create_table :dependents do |t|
      t.references :user
      t.string    :first_name
      t.string    :last_name
      t.string    :gender
      t.date      :dob
      t.string    :relationship
      t.string    :ssn
      t.integer   :monthly_income
      t.string    :source_of_income

      t.timestamp
    end

  end
end