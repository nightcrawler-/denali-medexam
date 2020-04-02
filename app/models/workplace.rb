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
class Workplace < ApplicationRecord

    ################# Validations #######################
    validates :email, email: true, uniqueness: true
    validates :name, presence: true, uniqueness: true

    validates_presence_of :address, :location, :phone, :registration

    ############## ASSOCIATIONS #########################

    belongs_to :practitioner
    has_many :employees, dependent: :destroy
    has_many :examination_sessions
end
