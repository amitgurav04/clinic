class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


  after_create :add_user_consent_categories
  has_many :user_consent_categories, dependent: :delete_all
  has_many :consent_categories, :through => :user_consent_categories

  validates :name, :date_of_birth, :mobile_number, :gender, :presence => true

  def registration_consents=(consents)
    @consents = consents
  end

  def registration_consents
    @consents
  end

  def add_user_consent_categories
    ids = registration_consents.keys
    categories = ConsentCategory.where(id: ids)
    raise 'Submitted consents are not present!' if categories.count != ids.count
    categories.each do |category|
      consent = UserConsentCategory.new
      consent.consent_category = category
      consent.user = self
      consent.save!
    end
  end

end
