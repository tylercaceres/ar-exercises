# frozen_string_literal: true

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, presence: true, numericality: { greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true, allow_nil: false, allow_blank: false
end
