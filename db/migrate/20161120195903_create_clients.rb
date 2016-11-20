class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :injury
      t.string :appointment_date

      t.timestamps
    end
  end
end
