# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

  attr_accessor :address_string

  @emails = []

  def initialize(address_string = nil)
    @address_string = address_string
  end

  def parse
    if @address_string.include? ", "
      @emails = @address_string.split(", ")
    elsif @address_string.include? ""
      @emails = @address_string.split(" ")
    elsif @address_string.include? ", " && @address_string.include? " "
    end

    @emails.uniq
  end

end
