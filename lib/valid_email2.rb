require "valid_email2/email_validator"

module ValidEmail2
  def self.disposable_emails
    @@disposable_emails ||= JSON.load_file(File.expand_path("../../vendor/disposable_emails.json",__FILE__))
  end

  def self.blacklist
    []
  end
end
