class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.content :content
      t.restaurant :references

      t.timestamps
    end
  end
end
