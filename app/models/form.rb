class Form < ApplicationRecord
  belongs_to :user
  # quando form for apagado, todas questões devem ser apagadas
  has_many :questions, dependent: :destroy 
  # quando form for apagado, todas respostas devem ser apagadas
  has_many :answers, dependent: :destroy 
  extend FriendlyId
  friendly_id :title, use: :slugged # mapeando title do form -> para slugged 
  validates :title, :description, :user, presence: true
  # validates :title, uniqueness: true 
end
