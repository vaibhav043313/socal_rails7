class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.text :content, null: false
      t.references :user, null: false, foreign_key: true
      t.belongs_to :channel, index: true, null: false
      t.timestamps
    end
  end
end
