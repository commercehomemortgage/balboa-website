class Quote < ActiveRecord::Base
  has_many :drivers, inverse_of: :quote
  has_many :vehicles, inverse_of: :quote
  has_many :additional_insureds, inverse_of: :quote
  has_many :valuable_items, inverse_of: :quote

  strip_attributes
  validates :email, :phone, presence: true


  mount_uploader :current_policy, CurrentPolicyUploader
  
  after_create :notify_email

  def pretty_date
    created_at.strftime("%m/%d/%Y")
  end

  accepts_nested_attributes_for :drivers, :vehicles, :additional_insureds, :valuable_items

  def name
    if name_of_insured.present?
      name_of_insured
    else
      "#{first_name} #{last_name}"
    end
  end

  def pretty_date
    created_at.strftime('%m-%d-%Y')
  end

private
  # Send a notification email
  def notify_email
    begin
      QuoteMailer.send_email(self).deliver
    rescue => e
      Rails.logger.error("Unable to send quote email notification. #{e.message}")
    end
  end
end