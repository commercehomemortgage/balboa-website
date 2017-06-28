class AdditionalInsured < ActiveRecord::Base
  belongs_to :quote, inverse_of: :additional_insureds
  validates :name, :birthday, presence: true
end