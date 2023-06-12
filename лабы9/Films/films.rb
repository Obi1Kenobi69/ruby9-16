class Film
    def films
        case hum
        when 'Джордж Лукас'
            puts DL[rand(5)]
        when 'Араки'

            puts AK[rand(2)]
            
        when 'Кристофер Нолан'
            puts KN[rand(3)]
        else
            puts "Мы не знаем этого режиссёра, нам нечего вам предложить"
        end
    end    
end
