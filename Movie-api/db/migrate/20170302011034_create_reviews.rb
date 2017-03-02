class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :rating
      t.string :comments

      t.timestamps
    end
  end
end
