class User < ActiveRecord::Base
  belongs_to  :race
  has_many    :dependents
  has_one     :qualification
  has_one     :agency, through: :qualification
  has_many    :applications
  has_many    :dwellings, through: :applications

  validates :email,    :presence => true,
                       :uniqueness => true,
                       :format => { :with => /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  has_secure_password
end