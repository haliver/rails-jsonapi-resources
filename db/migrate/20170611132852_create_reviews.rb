class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false, comment: "user_id"
      t.text :comment, length: 1_000, comment: "コメント"
      t.timestamp :deleted_at, comment: "削除日時"
      t.timestamps
    end
  end
end
