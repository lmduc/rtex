class Problem < ActiveRecord::Base
  belongs_to :contest
  has_many :records, dependent: :destroy
end
