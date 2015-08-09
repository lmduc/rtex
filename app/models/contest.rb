class Contest < ActiveRecord::Base
  has_many :problems, dependent: :destroy

  accepts_nested_attributes_for :problems, reject_if: :all_blank, allow_destroy: true
end
