# == Schema Information
#
# Table name: challenges
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  description        :string(255)
#  brand_name         :string(255)
#  brand_logo_url     :string(255)
#  hero_img_url       :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  challenge_type     :string(255)
#  challenge_reward   :string(255)
#  challenge_location :string(255)
#  brand_description  :string(255)
#

class Challenge < ActiveRecord::Base
  attr_accessible :brand_name, :title, :description, :brand_logo_url, :challenge_reward, :challenge_type, :challenge_location, :brand_description
  has_many :submissions
  
  validates :brand_name, :presence => true
  validates :title, :presence => true
  validates :description, :presence => true  
end
