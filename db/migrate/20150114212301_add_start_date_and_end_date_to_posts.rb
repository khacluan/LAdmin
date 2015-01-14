class AddStartDateAndEndDateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :start_date, :datetime
    add_column :posts, :end_date, :datetime
  end
end
