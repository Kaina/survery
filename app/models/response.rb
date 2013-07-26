class Response < ActiveRecord::Base
  belongs_to :survey
  belongs_to :user
  belongs_to :choices
end
