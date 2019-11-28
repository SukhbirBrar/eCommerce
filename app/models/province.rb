class Province < ApplicationRecord
  validates :province_name, presence: true

  # validates :GST, :PST
end
