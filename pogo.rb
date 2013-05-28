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
  'Gdańsk' => {'row' => 346, 'col' => 210 },
  'Katowice' => {'row' => 461, 'col' => 215 },
  'Kielce' => {'row' => 443, 'col' => 244 },
  'Kraków' => {'row' => 466, 'col' => 232 },
  'Lublin' => {'row' => 432, 'col' => 277 },
  'Łódź' => {'row' => 418, 'col' => 223 },
  'Olsztyn' => {'row' => 363, 'col' => 240 },
  'Opole' => {'row' => 449, 'col' => 196 },
  'Poznań' => {'row' => 400, 'col' => 180 },
  'Rzeszów' => {'row' => 465, 'col' => 269 },
  'Szczecin' => {'row' => 370, 'col' => 142 },
  'Toruń' => {'row' => 383, 'col' => 209 },
  'Wrocław' => {'row' => 436, 'col' => 181 },
  'Ełk' => {'row' => 361, 'col' => 270 },
  'Zakopane' => {'row' => 487, 'col' => 232 },
  'Gdynia' => {'row' => 342, 'col' => 208 },
  'Iława' => {'row' => 368, 'col' => 225 },
  'Koszalin' => {'row' => 350, 'col' => 170 },
  'Łomża' => {'row' => 378, 'col' => 267 },
  'Przemyśl' => {'row' => 472, 'col' => 283 },
  'Suwałki' => {'row' => 352, 'col' => 280 },
  'Wałbrzych' => {'row' => 445, 'col' => 167 },

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