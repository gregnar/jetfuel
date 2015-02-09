class AddHitCountToWebsite < ActiveRecord::Migration
  def change
    add_column :websites, :hit_count, :integer, default: 0
  end
end
