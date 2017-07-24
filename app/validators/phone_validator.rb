class PhoneValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A\d{3}[-\.]?\d{3}[-\.]?\d{4}\z/i
      record.errors[attribute] << (options[:message] || "Format as xxx-xxx-xxxx.")
    end
  end
end
