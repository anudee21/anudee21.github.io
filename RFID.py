import pymysql as MySQLdb
from datetime import datetime
import time
import serial
import os
import sys
import zerosms as z
user='9165654028'
password="anurag21"

db = MySQLdb.connect(host="localhost", user="username", passwd="project", db="mydb")
c_date=datetime.now().strftime('%y-%m-%d')

data=serial.Serial('/dev/serial1',9600,timeout=1)
print("")
while 1:
    try:
        with db.cursor() as cur:
            print("place your card")
            x=input()
            print(x)
            sql1="INSERT INTO rfid_entry(ent_rfid,ent_date) VALUES('"+x+"','"+c_date+"')"
            cur.execute(sql1)
            sql2="SELECT * FROM rfid_master WHERE rfid_code='"+x+"'"
            cur.execute(sql2)
            for row in cur:
                name=row[2]
                s_no=row[3]
                f_no=row[4]
                c_no=row[5]
                print(row[2]+"you are present")
        msg=("Dear Sir your attendance has been updated and you are marked present in the college"+name)
        msg1=(name+"of CS-6 is marked his/her attendance ")
        z.sms(phno=user,passwd=password,message=msg,receivernum=s_no)
        z.sms(phno=user,passwd=password,message=msg,receivernum=f_no)
        z.sms(phno=user,passwd=password,message=msg1,receivernum=c_no)
        db.commit()
    except KeyboardInterrupt:
        data.close()
db.close()    
    
     
            
