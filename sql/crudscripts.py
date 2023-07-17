'''
@Author: Shreyash More

@Date: 2023-07-04 15:06:30

@Last Modified by: Shreyash More

@Last Modified time: 2023-07-04 15:06:30

@Title : Crud operation in SQL
'''
import pymysql
import logging
from dotenv import load_dotenv 
import os

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
    
    
except Exception as e:
    logger.error(e)

def show_database():
    cursor.execute("show databases")
    for c in cursor:
            print(c)

def use_database(name):
    try:
        cursor.execute(f"use {name}")
    except Exception as e:
        logger.error(f"Error:{e}")

def check_table(name):
    try:
        result=cursor.execute(f"SHOW TABLES LIKE '{name}'")
        if result:
            return True
            
        else:
        #     cursor.execute(f'create table {name}(stud_id int(10) NOT NULL  , PRIMARY KEY(stud_id)  ,stud_fname varchar(20),stud_lname varchar(20),stud_roll int(5))')
            logger.error("Table does not exists")
            return False
    except Exception as e:
        logger.error(f"Error:{e}")


def insert_data(t_name,id,f_name,l_name,roll_no):
    try:
        cursor.execute(f"insert into {t_name}(stud_id,stud_fname,stud_lname,stud_roll) values ('{id}','{f_name}','{l_name}','{roll_no}')")
        con.commit()
    except Exception as e:
        logger.error(f"Error:{e}")

def update_data(data,set):
    try:
        cursor.execute(f"UPDATE students SET stud_roll='{data}' WHERE stud_id={set}")
        con.commit()
    except Exception as e:
        logger.error(f"Error:{e}")


def show_table(name):
    try:
        cursor.execute(f"select * from {name}")
        for c in cursor:
            print(c)
    except Exception as e:
        logger.error(f"Error:{e}")
  
def delete_data(table_name,data):
    try:
        cursor.execute(f"delete from {table_name} where stud_fname='{data}'")
        con.commit()
    except Exception as e:
        logger.error(f"Error:{e}")
 
def show_all_table():
    cursor.execute("show tables")
    for c in cursor:
            print(c)
    return "use students table name for creation"

def main():
    while(True):
        print("----- SQL Table -----\n")
        print(" 1 To load Database \n 2 Show Database \n 3 Exit ")
        try:
            choice=int(input("Enter a choice : "))
            if choice==1:
                name=input("Enter a Database: ")
                use_database(name)
                print(show_all_table())
                name_table=input("Enter a name for Table: ")
                result=check_table(name_table)
                if result:
                    while(True):
                        print("----- Table Menu -----\n")
                        print(" 1 To Insert \n 2 To Update \n 3 To view Table \n 4 To Delete \n 5 Exit")
                        subchoice=int(input("Enter a choice "))
                        if subchoice==1:
                            id=int(input("Enter the id "))
                            f_name=input("Enter the first name: ")
                            l_name=input("Enter the last name: ")
                            roll_no=int(input("Enter the roll number: "))
                            insert_data(name_table,id,f_name,l_name,roll_no)
                            logger.info("Data Inserted successfully\n")
                        elif subchoice==2:
                            data=int(input("Enter the updated roll number  "))
                            coloum_n=int(input("Enter the id where you want to update "))
                            update_data(data,coloum_n)
                            logger.info("Data updated successfully")
                        elif subchoice==3:
                            show_table(name_table)
                        elif subchoice==4:
                            data=input("Enter the firstname ")
                            logger.warning("Do yo want to delete data?")
                            choice=input("Enter y(yes)/n(no) for confirmation: ")
                            if choice.lower()=="y":
                                delete_data(name_table,data)
                                logger.info("Data deleted successfully")
                            elif choice.lower()=="n":
                                print("Canceled")
                            else:
                                print("Enter y or n")
                        elif subchoice==5:
                            break    
                        else:
                            print("Invalid choice")
            elif choice==2:
                show_database()
            elif choice==3:
                break
            else:
                print("Enter valid choice")
        except:
            logger.error("Enter a valid choice")

if __name__=="__main__":
    main()
