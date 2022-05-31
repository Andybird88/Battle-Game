class Player
    attr_reader :name, :hp, :status

    def initialize(name,hp=60, status='fine')
        @name = name
        @hp = hp
        @status = status
    end

    def receive_damage
        #   @hp -= rand(5..20)
        @hp -= 10
    end

    def receive_heavy_damage
        @hp -= rand(10..30)
    end

    def sleep
        if rand(1..2) == 2
        @status = 'Asleep'
        end
    end

    def poisen
        @status = 'poisened'
    end

    def wake_up
        if rand(1..10) >= 5
            @status = 'fine'
        end
    end
    
    def poisen_damage
        if @status == 'poisened'
        @hp -= 5
        end
    end

end