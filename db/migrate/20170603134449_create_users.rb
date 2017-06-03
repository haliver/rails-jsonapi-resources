class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, comment: "名前"
      t.string :email, null: false, comment: 'メールアドレス'
      t.timestamp :deleted_at, comment: '削除日時'
      t.string :password, null: false, comment: "パスワード"
      t.timestamps
    end
  end
end
