# == Schema Information
#
# Table name: practitioners
#
#  id           :bigint           not null, primary key
#  address      :string
#  email        :string
#  fax          :string
#  location     :string
#  name         :string
#  registration :string
#  signature    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'test_helper'

class PractitionerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
