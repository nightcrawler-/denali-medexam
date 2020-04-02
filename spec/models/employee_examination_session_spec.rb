# == Schema Information
#
# Table name: employee_examination_sessions
#
#  id          :bigint           not null, primary key
#  bp          :float
#  btw         :float
#  fp          :string
#  lmp         :string
#  remarks     :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  employee_id :bigint
#  session_id  :bigint
#
require 'rails_helper'

RSpec.describe EmployeeExaminationSession, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
