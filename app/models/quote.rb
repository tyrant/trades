class Quote < ActiveRecord::Base
  belongs_to :trader
  belongs_to :job
end
