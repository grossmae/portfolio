class Project < ActiveRecord::Base
  has_one :icon
  has_many :screenshots  

  validates(:title, presence: true, uniqueness: true)
  validates(:subtitle, presence: true)
  validates(:description, presence: true)
  validates(:icon, presence: true)
  validates(:screenshots, length: { minimum: 1 })
end
