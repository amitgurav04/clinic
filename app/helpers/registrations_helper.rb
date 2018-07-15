module RegistrationsHelper
  def consents_checks
    checks = []
    Consent.get_current_consents.each do |consent_info|
      id = consent_info[:id]
      desc = consent_info[:description]
      compulsory = (consent_info[:compulsory] ? '(required)' : '')
      checkbox = "<input type='checkbox' name='user[registration_consents][#{id}]'> #{desc} #{compulsory}<br/>"
      checks.push(checkbox)
    end
    return checks
  end
end
