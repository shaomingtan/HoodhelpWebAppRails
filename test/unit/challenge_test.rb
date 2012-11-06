# == Schema Information
#
# Table name: challenges
#
#  id                    :integer          not null, primary key
#  title                 :string(255)
#  description           :string(255)
#  brand_name            :string(255)
#  brand_logo_url        :string(255)
#  hero_img_url          :string(255)
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  challenge_type        :string(255)
#  challenge_reward      :string(255)
#  challenge_location    :string(255)
#  brand_description     :string(255)
#  challenge_cover_photo :string(255)
#

require 'test_helper'

class ChallengeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
