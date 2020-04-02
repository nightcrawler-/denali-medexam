# == Schema Information
#
# Table name: employee_examination_sessions
#
#  id                     :bigint           not null, primary key
#  bp                     :float
#  btw                    :float
#  fp                     :string
#  lmp                    :string
#  remarks                :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  employee_id            :bigint
#  examination_session_id :bigint
#
class EmployeeExaminationSession < ApplicationRecord

    ############## Validations #################
    validates_presence_of :remarks

    ############## Associations ################

    belongs_to :employee
    belongs_to :examination_session

end
