# == Schema Information
#
# Table name: practitioners
#
#  id           :bigint           not null, primary key
#  address      :string
#  email        :string
#  fax          :string
#  location     :string
#  name         :string
#  phone        :string
#  registration :string
#  signature    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require 'rails_helper'

RSpec.describe Practitioner, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
