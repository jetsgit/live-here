class Topic < ActiveRecord::Base
  belongs_to :survey
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions , reject_if: lambda {|a| [a.description.blank?]}
end
