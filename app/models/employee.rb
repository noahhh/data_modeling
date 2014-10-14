class Employee < ActiveRecord::Base
	belongs_to :company
	belongs_to :manager

	validates :name, presence: :true
	validates :badge_number, presence: :true, numericality: :true
	validates :position, presence: :true
	validates :age, presence: :true, numericality: :true
	validates :age, :in => Date.new(1900)..Time.now.years_ago(18).to_date,
							message: "%{value} is too young to work"
							#validates they are of age (18) to work


	# def younger_than_18?
	# 	age < 18
	# end
end
