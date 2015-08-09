class Record < ActiveRecord::Base
  belongs_to :problem

  def data_as_array
    data.map { |k, v| v }
  end
end
