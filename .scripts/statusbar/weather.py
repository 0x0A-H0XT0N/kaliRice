import pyowm


def main():
    """
    Gets temperature of 'city_name' in 'celsius' using the 'api_key', only for python 3.X.
    :return: Float value, using ""Degrees"" character.
    """
    try:
        api_key = "b5bcf5fa41abed55ddf71ea40aa6f4ea"
        city_name = "Artur Nogueira,BR"
        # city_name = "Campinas,BR"

        owm = pyowm.OWM(api_key)
        weather_at_place = owm.weather_at_place(city_name)
        get_temp_celsius = weather_at_place.get_weather().get_temperature("celsius")
        # format == {'temp_max': 10.5, 'temp': 9.7, 'temp_min': 9.0}
        weather_int_value = get_temp_celsius['temp']
        print("%s: %.1f°C" % (city_name, weather_int_value))
        # return "%s: %.1f°C" % (city_name, weather_int_value)
    except:
        print("ERROR!")
        # return "ERROR!"


if __name__ == '__main__':
    main()
