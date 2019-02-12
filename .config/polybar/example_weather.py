import pyowm

owm = pyowm.OWM('b5bcf5fa41abed55ddf71ea40aa6f4ea')
observation = owm.weather_at_place('Artur Nogueira,BR')
w = observation.get_weather()
print(w)                      # <Weather - reference time=2013-12-18 09:20,
                              # status=Clouds>
# if w.status == "Rain":
#     print(ai)
# Weather details
# w.get_wind()                  # {'speed': 4.6, 'deg': 330}
# w.get_humidity()              # 87
# w.get_temperature('celsius')  # {'temp_max': 10.5, 'temp': 9.7, 'temp_min': 9.0}
# print(w.get_temperature('celsius'))
# Search current weather observations in the surroundings of
# lat=22.57W, lon=43.12S (Rio de Janeiro, BR)
observation_list = owm.weather_around_coords(-22.57, -43.12)
