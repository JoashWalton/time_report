class CreatePublishers < ActiveRecord::Migration[5.2]
  def change
    create_table :publishers do |t|
      t.string :pub_first_name
      t.string :pub_last_name
      t.string :pub_email
      t.string :pub_phone_number

      t.timestamps
    end
  end
end
