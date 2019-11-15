class Post < ApplicationRecord
  validates :title, presence: true
  validates :image, presence: true
  def change
    create_table :posts do |t|
      t.string :name
      t.string :text
      t.text :image
      t.timestamps
    end
  end
end
