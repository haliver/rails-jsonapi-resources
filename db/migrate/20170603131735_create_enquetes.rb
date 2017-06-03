class CreateEnquetes < ActiveRecord::Migration[5.1]
  def change
    create_table :enquetes do |t|
      t.string :title, null: false, comment: "アンケートタイトル"
      t.datetime :started_at, comment: "開始日時"
      t.datetime :ended_at, comment: "終了日時"
      t.timestamp  :deleted_at, comment: "削除日時"
      t.boolean  :is_active, default: true, comment: "有効判定"
      t.timestamps
    end
  end
end
