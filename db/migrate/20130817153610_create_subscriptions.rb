class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :first_name
      t.string :last_name
      t.string :organization
      t.string :title
      t.string :country
      t.string :mobile
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
