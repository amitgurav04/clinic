class CreateConsentCategories < ActiveRecord::Migration
  def change
    create_table :consent_categories do |t|
      t.string :name
      t.boolean :compulsory, default: true
      t.text :description

      t.timestamps null: false
    end
  end
end
