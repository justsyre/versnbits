class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.references :user, null: false, foreign_key: true
      t.string :first_name, null: false
      t.string :middle_name, null: true
      t.string :last_name, null: false
      t.date :birth_date, null: false
      t.string :personal_email, null: false

      t.timestamps
    end
  end
end
