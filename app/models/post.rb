class Post < ApplicationRecord
  validates :text, presence: true
  def change
    create_tabke :posts do |t|
      t.string :name
      t.string :text
      t.text :image
      t.timestamps
    end
  end
end
