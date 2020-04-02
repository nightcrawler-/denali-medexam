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
require 'rails_helper'

RSpec.describe ExaminationSession, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
