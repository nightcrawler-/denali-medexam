# == Schema Information
#
# Table name: examination_sessions
#
#  id               :bigint           not null, primary key
#  date_of_exam     :date
#  examination_type :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  workplace_id     :bigint
#
class ExaminationSession < ApplicationRecord
    ################ Validations #####################

    validates_presence_of :examination_type, :date_of_exam

    ############### Associations #########################

    belongs_to :workplace
    has_many   :employee_examination_sessions
    has_many   :employees, through: :employee_examination_sessions

    # List the employees registered in this examination session
    def employees
        self.employee_examination_sessions.map(&:employee)
    end
end
