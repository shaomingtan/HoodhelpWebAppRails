# == Schema Information
#
# Table name: submissions
#
#  id           :integer          not null, primary key
#  description  :string(255)
#  challenge_id :integer
#  content_url  :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Submission < ActiveRecord::Base
  attr_accessible :challenge_id, :content_url, :description
  belongs_to :challenge
  
  validates :challenge_id, :presence => true
  default_scope :order => 'submissions.created_at DESC'
end
