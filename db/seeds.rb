# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Seed file:
# /home/frederick/Dev/data/legacy-medexam

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

#  address      :string
#  dob          :date
#  gender       :integer
#  name         :string
#  pn           :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  national_id  :string
#  workplace_id :bigint

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

practitioner = Practitioner.create!(
                                    address: "P.O. Box 3310-10200s, Lisbit",
                                    email: "juan@carslo2s.com",
                                    fax: "100s05",
                                    location: "Naursu",
                                    name: "Missey X",
                                    phone: "07s2300564",
                                    registration: "W1s590"
)

workplaces = JSON.parse(File.read(Rails.root.join('db').to_s + '/workplace-employees.json'))

workplaces.each do |w|

    workplace = Workplace.create!(
                                    name: w["name"],
                                    address: w["address"],
                                    email: w["email"],
                                    location: w["location"],
                                    phone: w["phone"],
                                    registration: w["registration"],
                                    practitioner_id: practitioner.id
                                    )
    w["employees"].each do |e|
        employee = Employee.create!(
                                    name: e["name"],
                                    dob: e["dob"],
                                    gender: e["gender"],
                                    pn: e["pn"],
                                    national_id: e["national_id"],
                                    workplace_id: workplace.id

        )
        workplace.employees << employee
    end
end
