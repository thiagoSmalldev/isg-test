class Post < ApplicationRecord
  belongs_to :user # Um post pertence a um único usuário
  has_many :comments, dependent: :destroy

  validates :title, :body, presence: true
end
