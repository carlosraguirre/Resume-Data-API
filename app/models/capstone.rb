class Capstone < ApplicationRecord
  belongs_to :user, optional: true
end
