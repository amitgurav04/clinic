class CreateConsents < ActiveRecord::Migration
  def change
    create_table :consents do |t|
      t.text :description
      t.references :consent_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
