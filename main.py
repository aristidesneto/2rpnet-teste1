from decouple import config
import time

VAR = config('TWORPTEST')

while True:
    print (VAR)
    time.sleep(20)
