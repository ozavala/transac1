class CreateParties < ActiveRecord::Migration[5.2]
  def change
    create_table :parties do |t|
      t.string :party_type
      t.string :name
      t.string :first_name
      t.string :last_name

    end
  end
end
