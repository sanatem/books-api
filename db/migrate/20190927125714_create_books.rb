class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string     :title, index: true
      t.string     :isbn, index: true
      t.float      :price
      t.string     :description
      t.belongs_to :author
      t.timestamps
    end
  end
end
