class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.belongs_to :role

      t.timestamps
    end
  end
end
