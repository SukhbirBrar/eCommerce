class Province < ApplicationRecord
  belongs_to :users
  
  validates :province_name, presence: true

  # validates :GST, :PST
end
