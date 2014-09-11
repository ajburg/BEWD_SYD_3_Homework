class Email_Record
  attr_reader :email
  attr_reader :error_status
  attr_reader :error_reason
  attr_reader :error_date

  def initialize
  end

  def record(email, error_status, error_reason, error_date)
    @email = email
    @error_status = error_status
    @error_reason = error_reason
    @error_date = error_date
  end
end