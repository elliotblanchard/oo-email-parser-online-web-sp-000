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
    end

    separated_emails = []

    @emails.each_with_index do |value,index|
      if value.include? " "
        separated_emails << value.split(" ")[1]
        separated_emails << value.split(" ")[0]
      else
        separated_emails << value
      end
    end

    @emails.uniq
  end

end
