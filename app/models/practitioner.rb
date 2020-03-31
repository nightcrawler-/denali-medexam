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
#  registration :string
#  signature    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Practitioner < ApplicationRecord

    ############### VALIDATIONS ###################

    validates_presence_of :address
    validates_presence_of :email
    validates_presence_of :location
    validates_presence_of :name
    validates_presence_of :registration

end
