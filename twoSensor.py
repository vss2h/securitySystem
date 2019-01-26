from gpiozero import MotionSensor as motion
import time
import sys
import os
pir = motion(10)

while True:
        if pir.motion_detected:
            print("Motion")
            os.system("fswebcam 720x650 USERS/access0/today.jpg")
            time.sleep(5)
            sys.exit(0)
        else:
                print("No Motion")
                time.sleep(5)
