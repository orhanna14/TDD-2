# Use TDD principles to build out name functionality for a Person.
# Here are the requirements:
# - Add a method to return the full name as a string. A full name includes
#   first, middle, and last name. If the middle name is missing, there shouldn't
#   have extra spaces.
# - Add a method to return a full name with a middle initial. If the middle name
#   is missing, there shouldn't be extra spaces or a period.
# - Add a method to return all initials. If the middle name is missing, the
#   initials should only have two characters.
#
# We've already sketched out the spec descriptions for the #full_name. Try
# building the specs for that method, watch them fail, then write the code to
# make them pass. Then move on to the other two methods, but this time you'll
# create the descriptions to match the requirements above.

class Person
  def initialize(first_name:, middle_name: nil, last_name:)
    @first_name = first_name
    @middle_name = middle_name
    @last_name = last_name
  end

  def full_name(first_name, middle_name, last_name)
    if middle_name == nil
      full_name = first_name + ' ' + last_name
    else
    full_name = first_name + ' ' + middle_name + ' ' + last_name
    end
  end

  def full_name_with_middle_initial(first_name, middle_name, last_name)
    if middle_name == nil
      full_name = first_name + ' ' + last_name
    else
    full_name = first_name + ' ' + middle_name[0] + ' '+ last_name
  end

  def initials(first_name, middle_name, last_name)
    if middle_name == nil
      full_name = first_name[0] + ' ' + last_name[0]
    else
    full_name = first_name[0] + ' ' + middle_name[0] + ' ' + last_name[0]
  end
end

RSpec.describe Person do
  describe "#full_name" do
    it "concatenates first name, middle name, and last name with spaces" do 

    person = Person.new(first_name: 'Olivia', middle_name: 'Rose-Hanna', last_name: 'McGoffin')

    expect(person.full_name('Olivia', 'Rose-Hanna', 'McGoffin')).to eq('Olivia Rose-Hanna McGoffin')

    end
    it "does not add extra spaces if middle name is missing" do 

    person = Person.new(first_name: 'Olivia', middle_name: nil, last_name: 'McGoffin')

    expect(person.full_name('Olivia', nil, 'McGoffin')).to eq('Olivia McGoffin')

    end
  

  end

  describe "#full_name_with_middle_initial"
    it "takes in first name, middle name, and last name, and returns first and last name
    with middle initial with spaces." do

    person = Person.new(first_name: 'Olivia', middle_name: 'Rose-Hanna', last_name: 'McGoffin')

    expect(person.full_name_with_middle_initial('Olivia', 'Rose-Hanna', 'McGoffin')).to eq('Olivia R McGoffin')
    end

    it "does not add extra spaces if middle name is missing" do 

    person = Person.new(first_name: 'Olivia', middle_name: nil, last_name: 'McGoffin')

    expect(person.full_name_with_middle_initial('Olivia', nil, 'McGoffin')).to eq('Olivia McGoffin')

    end

  end

  describe "#initials"
    it "takes in first name, middle name, and last name, and returns initials with spaces." do

    person = Person.new(first_name: 'Olivia', middle_name: 'Rose-Hanna', last_name: 'McGoffin')

    expect(person.initials('Olivia', 'Rose-Hanna', 'McGoffin')).to eq('O R M')

    end

    it "does not add extra spaces if middle name is missing" do 

    person = Person.new(first_name: 'Olivia', middle_name: nil, last_name: 'McGoffin')

    expect(person.initials('Olivia', nil, 'McGoffin')).to eq('O M')
    end
  end
end