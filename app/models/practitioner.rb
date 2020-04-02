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
class Practitioner < ApplicationRecord

    ############### VALIDATIONS ###################

    validates :email, email: true, uniqueness: true

    validates_presence_of :address, :location, :name, :registration, :phone

    ############## ASSOCIATIONS ####################

    has_many :workplaces, dependent: :destroy
end
