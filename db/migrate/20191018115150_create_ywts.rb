class CreateYwts < ActiveRecord::Migration[6.0]
  def change
    create_table :ywts do |t|
      t.references :user, null: false, foreign_key: true
      t.text :y
      t.text :w
      t.text :t

      t.timestamps
    end
  end
end
