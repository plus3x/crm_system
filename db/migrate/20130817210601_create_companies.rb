class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :phone
      t.string :fax
      t.string :inn
      t.string :ogrn
      t.string :actual_address

      t.timestamps
    end
  end
end
