class UserConsentCategory < ActiveRecord::Base
  belongs_to :user
  belongs_to :consent_category
  validates :consent_category, presence: true
end
