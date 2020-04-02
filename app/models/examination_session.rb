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
end
