class CreateContacts < ActiveRecord::Migration[7.0]
  def change
  	create_table :contacts do |s|
  		s.text :mail

  		s.timestamps
  	end
  	Contact.create :mail=>'sad@mail.com'
  end
end
