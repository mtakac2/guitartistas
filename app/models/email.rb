class Email
  include ActiveModel::Validations
  include ActiveModel::Conversion
  extend ActiveModel::Naming

  attr_accessor :name, :email, :subject, :message

  validates_presence_of :name, :email, :subject, :message
  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i

  def initialize(attributes = {})
    attributes.each do |name, value|
      self.public_send("#{name}=", value)
    end if attributes
  end

  def persisted?
    false
  end
end