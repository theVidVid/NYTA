class Cohort < ApplicationRecord
    has_many :students
    belongs_to :instructor, optional: true
    belongs_to :course, optional: true

    default_scope { order(:id) }
end