require 'pry'
class Person

  attr_reader :name, :happiness
  attr_accessor :bank_account, :hygiene

def initialize(name, bank_account=25, happiness=8, hygiene=8)
  @name = name
  @bank_account = bank_account
  if happiness > 10
    @happiness = 10
  elsif happiness < 0
    @happiness = 0
  else
    @happiness = happiness
    end
    if hygiene > 10
      @hygiene = 10
    elsif hygiene < 0
      @hygiene = 0
    else
      @hygiene = hygiene
  end
end

def happiness=(happiness)
  if happiness > 10
    @happiness = 10
  elsif happiness < 0
    @happiness = 0
  else
    @happiness = happiness
    end
  end

def hygiene=(hygiene)
  if hygiene > 10
    @hygiene = 10
  elsif hygiene < 0
    @hygiene = 0
  else
    @hygiene = hygiene
  end
end

def happy?
  if @happiness > 7
    true
else
false
end
end

def clean?
  if @hygiene > 7
    true
else
false
end
end

def get_paid(salary)
  @bank_account += salary
  "all about the benjamins"
end

def take_bath
  @hygiene += 4
  self.hygiene=(hygiene)
  "♪ Rub-a-dub just relaxing in the tub ♫"
end

def work_out
  @hygiene -= 3
  self.hygiene=(hygiene)
  @happiness += 2
  self.happiness=(happiness)
  "♪ another one bites the dust ♫"
end

def call_friend(person)
  @happiness += 3
  self.happiness=(happiness)
  person.happiness += 3
  # happiness=(person.happiness)
  # happiness=(person)
  "Hi #{person.name}! It's #{name}. How are you?"
end

def start_conversation(person, topic)
  if topic == "politics"
    @happiness -= 2
    self.happiness=(happiness)
    person.happiness -= 2
    #happiness=(person.happiness)
    "blah blah partisan blah lobbyist"
  elsif topic == "weather"
    # binding.pry
  #  @happiness += 1
   self.happiness=(self.happiness+1)
   person.happiness = (person.happiness+1)
   #happiness=(person.happiness+1)
  "blah blah sun blah rain"

else
  "blah blah blah blah blah"
end

end

end
