# your code goes here
class Person
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name

  def initialize (name)
    @name = name
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end

  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def happiness
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness = 0
    end
    @happiness
  end

  def hygiene
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
    @hygiene
  end


  def happy?
    if @happiness > 7
      return true
    end
    return false
  end

  def clean?
    if @hygiene > 7
      return true
    end
    return false
  end

  def get_paid (salary)
    @bank_account += salary

    return "all about the benjamins"
  end

  def take_bath
    self.hygiene =  self.hygiene + 4
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene = self.hygiene - 3
    self.happiness += 2
    return "♪ another one bites the dust ♫"
  end

  def call_friend (friend)
    self.happiness += 3
    self.happiness =10 if self.happiness > 10
    friend.happiness += 3
    friend.happiness=10 if friend.happiness > 10
    return "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation (person, topic)

    if topic == 'politics'
      self.happiness -= 2
      person.happiness -=2
      self.happiness = 0 if self.happiness < 0
      person.happiness =0 if person.happiness <0
      return'blah blah partisan blah lobbyist'
    elsif topic == 'weather'
      self.happiness += 1
      person.happiness += 1
      self.happiness = 10 if self.happiness > 10
      person.happiness =10 if person.happiness > 10

      return 'blah blah sun blah rain'
    else
      return 'blah blah blah blah blah'
    end
  end

end