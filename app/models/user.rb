class User < ActiveRecord::Base
  has_many :interviews

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true

  def first_name
    name.split(' ').first
  end
end