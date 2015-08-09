class Contest < ActiveRecord::Base
  has_many :problems, dependent: :destroy

  accepts_nested_attributes_for :problems, reject_if: :all_blank, allow_destroy: true

  def has_records?
    problems.joins(:records).count > 0
  end
end
