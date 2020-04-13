class ApplicationRecord < ActiveRecord::Base
  has_paper_trail #temp disable papertrail when:, too damn large db, exceed available quoa on heroku by far, row and sizewise

  self.abstract_class = true
end
