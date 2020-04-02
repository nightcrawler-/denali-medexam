# == Schema Information
#
# Table name: workplaces
#
#  id              :bigint           not null, primary key
#  address         :string
#  email           :string
#  location        :string
#  name            :string
#  phone           :string
#  registration    :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  practitioner_id :bigint
#
require 'rails_helper'

RSpec.describe Workplace, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
