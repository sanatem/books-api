class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string     :title
      t.string     :isbn
      t.float      :price
      t.string     :description
      t.belongs_to :author
      t.timestamps
    end
  end
end
