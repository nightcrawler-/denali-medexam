# == Schema Information
#
# Table name: employee_examination_sessions
#
#  id                     :bigint           not null, primary key
#  bp                     :float
#  btw                    :float
#  fp                     :string
#  lmp                    :string
#  remarks                :string           default("PHYSICALLY FIT")
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  employee_id            :bigint
#  examination_session_id :bigint
#
class EmployeeExaminationSession < ApplicationRecord

    ############## Validations #################
    
    validates_presence_of :remarks
    validates_uniqueness_of :employee_id, scope: :examination_session_id

    ############## Associations ################

    belongs_to :employee
    belongs_to :examination_session


    # TODO Add tests for the below at least
    def workplace_details
        self.examination_session.workplace.name + self.examination_session.workplace.address
    end

    def examination_type
        self.examination_session.examination_type
    end

    def date 
        self.examination_session.date_of_exam
    end

    def practitioner_details
        self.examination_session.workplace.practitioner.name + self.examination_session.workplace.practitioner.address
    end

    def practitioner_registration
        self.examination_session.workplace.practitioner.registration
    end

    def practitioner_location
        self.examination_session.workplace.practitioner.location
    end

    def practitioner_phone
        self.examination_session.workplace.practitioner.phone
    end

    def practitioner_email
        self.examination_session.workplace.practitioner.email
    end

    def practitioner_fax
        self.examination_session.workplace.practitioner.fax
    end

end
