# == Schema Information
#
# Table name: sessions
#
#  id          :bigint           not null, primary key
#  bp          :float
#  bwt         :float
#  exam_done   :string
#  fp          :string
#  lmp         :string
#  note        :string
#  p           :integer
#  remarks     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :bigint
#
require 'test_helper'

class SessionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
