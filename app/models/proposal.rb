class Proposal < ApplicationRecord
  validates_presence_of :name, message: 'name cant be blank!'
  validates_presence_of :description, message: 'description cant be blank!'
  validates_presence_of :start_date,message: 'end_date cant be blank and should be a date type'
  validates_presence_of :end_date,message: 'end_date cant be blank and should be a date '
  validate :start_date_smaller_or_equal_than_end_date?
  validates :value,
       presence: {message: 'value cant be blank!'},
       numericality: {greater_than_or_equal_to: 0.01, message: 'value should be a numeral greater than 0,01!'}

  def start_date_smaller_or_equal_than_end_date?
    return if [self.start_date.blank?, self.end_date.blank?].any?
    if self.start_date > self.end_date
      errors.add(:start, 'start date must be less than end date')
    end
  end

end
