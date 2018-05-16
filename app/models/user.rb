class User < ApplicationRecord
  has_many :wikis, dependent: :destroy

  validates :title, length: { minimum: 5, }, presence: true
  validates :body, length: { minimum: 10 }, presence: true
  
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  protected
  def confirmation_required?
    false
  end

end
