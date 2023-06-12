# require "./films.rb"
if Gem.win_platform?
    Encoding.default_external = Encoding.find(Encoding.locale_charmap)
    Encoding.default_internal = __ENCODING__

    [STDIN, STDOUT].each do |io|
        io.set_encoding(Encoding.default_external, Encoding.default_internal)
    end
end
# humfilm = Film.new
puts "Здравствуйте, сегодня мы подготовили фильмы 3 режиссёров. Джордж Лукас, Араки, Кристофер Нолан. Фильмы какого режиссёра вы хотите посмотреть?"
hum = gets.encode("UTF-8").chomp
DL = [
    "Зёвздные войны эпизод 1",
    "Звёздные войны эпизод 2",
    "Звёздные войны эпизод 3",
    "Звёздные войны эпизод 4",
    "Звёздные войны эпизод 5",
    "Звёздные войны эпизод 6"
]
AK = [
    "Battle Tendency",
    "Stardust Crusaders"
    
    
]
KN = [
    "Темный рыцарь",
    "Интерстеллар",
    "Темный рыцарь: Возрождение легенды",
    "Бэтмен: Начало"
]

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