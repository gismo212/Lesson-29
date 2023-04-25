class CreateBarbers < ActiveRecord::Migration[7.0]
  def change
  	create_table :barbers do |t|
  		t.text :name

  		t.timestamps
  	end

  	Barber.create :name=>'Anatoly Pinkin'
  	Barber.create :name=>'Vladimir Belov'
  	Barber.create :name=>'Ivan Gusev'
  end
end
