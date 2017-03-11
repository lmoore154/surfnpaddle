class AddFactToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :fact, :text
  end
end
