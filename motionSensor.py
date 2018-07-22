import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BOARD)

GPIO.setup(16,GPIO.IN)#pir
count=0
try:
    time.sleep(4)#to stablize the sensor
    while True:
        if GPIO.input(16):
            print("Candidate Entered")
            count=count+1
            print("no of students =",count)
            time.sleep(2)#to avoid multiple detection
        else:
             print("No motion...")
            # time.sleep(2)
        time.sleep(0.1)#loop delay
except:
    GPIO.cleanup()
