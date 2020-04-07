# == Schema Information
#
# Table name: examination_sessions
#
#  id                                    :bigint           not null, primary key
#  abnormal_results                      :integer
#  abnormal_results_occupational_disease :integer
#  date_of_exam                          :date
#  examination_type                      :string
#  health_risk                           :string
#  recommended_for_re_deployment         :integer
#  created_at                            :datetime         not null
#  updated_at                            :datetime         not null
#  workplace_id                          :bigint
#
class ExaminationSession < ApplicationRecord
    ################ Validations #####################

    validates_presence_of :examination_type, :date_of_exam, :health_risk

    ############### Associations #########################

    belongs_to :workplace
    has_many   :employee_examination_sessions
    has_many   :employees, through: :employee_examination_sessions

    # TODO Test this List the employees registered in this examination session
    def employees
        self.employee_examination_sessions.map(&:employee)
    end

    # TODO Test this functionality, or discard if it proves unused
    def all_employees
        self.workplace.employees
    end

    # TODO Test this functionality. This func is supposed to return the users who are not in this session
    def unmarked_employees
        self.workplace.employees.where.not(id: self.employees.map(&:id))
    end

    def abnormal_results_non_occupational_disease
        self.abnormal_results.to_i - self.abnormal_results_occupational_disease.to_i
    end
end
