class Icon < ActiveRecord::Base
  belongs_to :project

  validates :image_url, format: { with: /\.(png|jpg)\Z/i }
end
