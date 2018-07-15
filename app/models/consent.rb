class Consent < ActiveRecord::Base
  belongs_to :consent_category

  def self.get_current_consents
    list = []
    ConsentCategory.all.each do |category|
      if Consent.where(consent_category: category).count > 0
        element = Hash.new
        element[:id] = category.id
        element[:name] = category.name
        element[:compulsory] = category.compulsory
        current_version = Consent.where(consent_category: category).order(created_at: :desc).first
        element[:description] = current_version.description
        list.push(element)
      end
    end
    return list
  end

end
