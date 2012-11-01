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

require 'test_helper'

class SubmissionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
