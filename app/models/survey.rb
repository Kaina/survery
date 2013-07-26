class Survey < ActiveRecord::Base
  belongs_to :user
  belongs_to :creator, class_name: "User"
  has_many :questions

  has_many :responses
  has_many :respondants, through: :responses, source: :user
  has_many :taken_surveys, through: :responses, source: :surveys
end
