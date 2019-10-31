require 'pry'
class Person
    attr_reader :name 
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        if happiness.between?(0, 10)  
            @happiness = happiness
        elsif  happiness > 10
            @happiness = 10 
        else happiness < 0
            @happiness = 0         
        end
    end

    def hygiene=(hygiene)
        if hygiene.between?(0, 10)
            @hygiene = hygiene 
        elsif hygiene > 10 
            @hygiene = 10
        else hygiene < 0
            @hygiene = 0
        end 
    end 

    def happy?
        self.happiness > 7
    end 

    def clean?
        self.hygiene > 7
    end 

    def get_paid(salary)
        @bank_account += salary 
        "all about the benjamins"
    end 

    def take_bath
        self.hygiene += 4 
        if @hygiene > 10 
            @hygiene = 10 
        end 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness += 2
        if @happiness > 10
            @happiness = 10
        end
        
        self.hygiene -= 3
        if @hygiene < 0 
            @hygiene = 0 
        end 
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        if @happiness > 10
            @happiness = 10
        end

        friend.happiness += 3
        if @happiness > 10
            @happiness = 10
        end
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            friend.happiness -= 2
            if @happiness < 0
                @happiness = 0
            end
            self.happiness -= 2
            if @happiness < 0
                @happiness = 0
            end
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            friend.happiness += 1
            if @happiness > 10
                @happiness = 10
            end
            self.happiness += 1
            if @happiness > 10
                @happiness = 10
            end
            return "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
    

end

#binding.pry
'kthx'

