class AddIndexToVisit < ActiveRecord::Migration[5.0]
  def change
    add_index :visits, :visitor_id
    add_index :visits, :link_id
  end
end
