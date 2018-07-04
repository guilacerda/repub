class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :cpf
      t.date :birth_date
      t.string :gender
      t.string :string
      t.boolean :admin
      t.string :phone
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end
  end
end