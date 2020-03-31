# == Schema Information
#
# Table name: sessions
#
#  id         :bigint           not null, primary key
#  bp         :float
#  bwt        :float
#  exam_done  :string
#  fp         :string
#  lmp        :string
#  note       :string
#  p          :integer
#  remarks    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Session < ApplicationRecord

    ################ Validations #####################

    validates_presence_of :exam_done, :remarks

    ############### Associations #########################

    belongs_to :employee

end
