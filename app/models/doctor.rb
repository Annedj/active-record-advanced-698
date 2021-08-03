class Doctor < ActiveRecord::Base
  has_many :interns # gives us the method .interns
  has_many :consultations
  has_many :patients, through: :consultations
  # this gives us the method .patients from a Doctor instance

  validates :last_name, presence: true
  validates :first_name, uniqueness: { scope: :last_name }
  # or same for validates :last_name, uniqueness: { scope: :first_name }
end
