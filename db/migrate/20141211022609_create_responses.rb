class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.datetime :responced_datetime
      t.references :user, index: true
      t.text :contents

      t.timestamps
    end
  end
end
