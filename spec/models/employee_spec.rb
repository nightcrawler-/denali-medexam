# == Schema Information
#
# Table name: employees
#
#  id           :bigint           not null, primary key
#  address      :string
#  dob          :date
#  gender       :integer
#  name         :string
#  pn           :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  national_id  :string
#  workplace_id :bigint
#
require 'rails_helper'

RSpec.describe Employee, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
