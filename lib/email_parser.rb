# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailParser 
    attr_accessor :string
    def initialize(string)
        @string = string
    end
    
    def parse
   
        if self.string.include?(",") && self.string.include?(" ")
            self.string.split(", ").join(" ").split(" ").uniq     

        elsif self.string.include?(",")
            self.string.split(", ").uniq
            
        else
            self.string.split(" ").uniq
        end
       
    end

end