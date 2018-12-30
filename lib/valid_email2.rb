require "valid_email2/email_validator"

module ValidEmail2
  def self.disposable_emails
    @@disposable_emails ||= JSON.load(File.read(Rails.root.join('vendor', 'disposable_emails.json')))
  end

  def self.blacklist
    []
  end
end
