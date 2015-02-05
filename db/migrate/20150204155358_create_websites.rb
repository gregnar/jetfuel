class CreateWebsites < ActiveRecord::Migration
  def change
    create_table :websites do |t|
      t.string :short_url
      t.string :long_url
      t.string :title

      t.timestamps null: false
    end
  end
end
