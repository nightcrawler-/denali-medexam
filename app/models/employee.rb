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
class Employee < ApplicationRecord
    enum gender: [:female, :male]

    ############### Validations ##########################

    validates :national_id, presence: true, uniqueness: true

    validates_presence_of :dob, :gender, :name

    ############### Associations #########################

    belongs_to :workplace
    has_many :employee_examination_sessions, dependent: :destroy
    has_many :examination_sessions, through: :employee_examination_sessions

    ############### Some 'helper' methods #################

    def age()
        now = Time.now.utc.to_date
        now.year - self.dob.year - ((now.month > self.dob.month || (now.month == self.dob.month && now.day >= self.dob.day)) ? 0 : 1)
    end
end
