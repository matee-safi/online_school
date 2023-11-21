class CreateUserCertificates < ActiveRecord::Migration[7.1]
  def change
    create_table :user_certificates do |t|
      t.references :user, null: false, foreign_key: true
      t.references :certificate, null: false, foreign_key: true
      t.datetime :date_earned

      t.timestamps
    end
  end
end
