# encoding: UTF-8
require 'sinatra'
get '/' do
  if params['city']
    @city = params['city']
  else
    @city = 'Białystok'
  end
  erb :index
end

Choices = {
  'Warszawa' => { 'row' => 406, 'col' => 250 },
  'Białystok' => { 'row' => 379, 'col' => 285 },
  'Bydgoszcz' => { 'row' => 381, 'col' => 199 },

}

# <option>Białystok</option>
#   <option>Bydgoszcz</option>
#   <option>Ełk</option>
#   <option>Gdańsk</option>
#   <option>Gdynia</option>
#   <option>Iława</option>
#   <option>Katowice</option>
#   <option>Koszalin</option>
#   <option>Kraków</option>
#   <option>Lublin</option>
#   <option>Łomża</option>
#   <option>Łódź</option>
#   <option>Olszyn</option>
#   <option>Opole</option>
#   <option>Poznań</option>
#   <option>Przemyśl</option>
  # <option>Rzeszów</option>
#   <option>Suwałki</option>
#   <option>Szczecin</option>
#   <option>Toruń</option>
#   <option>Wałbrzych</option>
#   <option>Warszawa</option>
#   <option>Wrocław</option>
#   <option>Zakopane</option>