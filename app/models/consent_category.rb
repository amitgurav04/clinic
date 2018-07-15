class ConsentCategory < ActiveRecord::Base
  has_many :consents
  has_many :user_consent_categories
  has_many :users, :through => :user_consent_categories
end
