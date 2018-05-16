class Student < ApplicationRecord
    belongs_to :cohort, optional: true

    default_scope { order(:id) }
end
