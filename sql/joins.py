'''
@Author: Shreyash More

@Date: 2023-07-07 15:06:30

@Last Modified by: Shreyash More

@Last Modified time: 2023-07-07 15:06:30

@Title : joins in SQL
'''
import pymysql
import logging
from dotenv import load_dotenv 
import os
import pandas as pd

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s',
handlers=[
        logging.StreamHandler(),  # Stream logs to the console
        logging.FileHandler('sql_sript.log')  # Store logs in a file
    ])
    # Create a logger
logger = logging.getLogger('my_logger')
try:
    load_dotenv()
    con=pymysql.connect(user=os.getenv('USERNAME1'),password=os.getenv('PASSWORD1'),\
                                host='localhost')
    logger.info("Successfully Connected")
    cursor=con.cursor()
    cursor.execute('use python_db')
    
except Exception as e:
    logger.error(e)

def convert():
    rows = cursor.fetchall()
    column_names = [desc[0] for desc in cursor.description]
    df = pd.DataFrame(rows, columns=column_names)
    print(df)

def left_join():
    try:
        cursor.execute("select* from table1 LEFT JOIN table2 on table1.table2_id=table2.id")
        convert()
    except Exception as e:
        logger.error(f"Error:{e}")
def right_join():
    try:
        cursor.execute("select* from table1 right JOIN table2 on table1.table2_id=table2.id; ")
        convert()
    except Exception as e:
        logger.error(f"Error:{e}")
def full_join():
    try:
        cursor.execute("select* from table1 full JOIN table2")
        convert()
    except Exception as e:
        logger.error(f"Error:{e}")
def inner_join():
    try:
        cursor.execute("select * from table1 inner join table2;")
        convert()
    except Exception as e:
        logger.error(f"Error:{e}")

def self_join():
    try:
        cursor.execute("select* from table1 a,table1 b where a.id=b.id")
        convert()
    except Exception as e:
        logger.error(f"Error:{e}")

def natural_join():
    try:
        cursor.execute("select * from table1 natural join table2")
        convert()
    except Exception as e:
        logger.error(f"Error:{e}")

def main():
    while(True):
        print("----- SQL Join Operation -----\n")
        print(" 1 To left join \n 2 To right join \n 3 To full join \n 4 To inner join \n 5 To self join \n 6 To natural join \n 7 Break ")
        choice=int(input("Enter any choice : "))
        try:
            if choice==1:
                left_join()
            elif choice==2:
                right_join()
            elif choice==3:
                full_join()
            elif choice==4:
                inner_join()
            elif choice==5:
                self_join()
            elif choice==6:
                natural_join()
            elif choice==7:
                break
            else:
                print("Invalid choice")
        except:
            logger.error("Enter a valid choice")
        
if __name__=="__main__":
    main()