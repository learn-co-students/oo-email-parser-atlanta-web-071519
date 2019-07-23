# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'
class EmailParser

  def initialize (emails)
    @emails=emails
  end

  def parse 
    array = @emails.split(/, | /).uniq
  end

end

emails = "john@doe.com, person@somewhere.org"
parser = EmailParser.new(emails)

p parser.parse

