# == Schema Information
#
# Table name: employees
#
#  id          :bigint           not null, primary key
#  address     :string
#  dob         :date
#  gender      :integer
#  name        :string
#  pn          :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  national_id :string
#
class Employee < ApplicationRecord
end
