class CreateUserConsentCategories < ActiveRecord::Migration
  def change
    create_table :user_consent_categories do |t|
      t.references :user, index: true, foreign_key: true
      t.references :consent_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
