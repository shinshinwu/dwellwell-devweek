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
  
  after_initialize :create_masked_user_id

    def create_masked_user_id
      random_letters  = ('a'..'z').to_a.shuffle[0,4].join
      random_numbers  = 10000 + Random.rand(100000 - 10000)
      kind_of_agent   = 'applicant'
      masked_user_id  = random_numbers.to_s + kind_of_agent + random_letters
      self.masked_user_id = masked_user_id
      self.save
    end

  def completed_profile?
    qualification.present?
  end



end