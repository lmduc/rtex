class Problem < ActiveRecord::Base
  belongs_to :contest
  has_many :records, dependent: :destroy

  def has_records?
    records.count > 0
  end
end
