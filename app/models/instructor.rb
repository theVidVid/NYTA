class Instructor < ApplicationRecord
    has_many :cohorts

    default_scope { order(:id) }
end
