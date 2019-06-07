from os import environ as ENV
print(ENV.get('SECRET_RANDOM_ENV', 'DEFAULT'))
print(ENV.get('ANOTHER_RANDOM_ENV', 'DEFAULT_ANOTHER'))
