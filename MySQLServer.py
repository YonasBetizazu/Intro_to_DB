import mysql.connector
from mysql.connector import Error

try:
    # Establish the connection
    mydb = mysql.connector.connect(
        host='localhost',
        user='root',
        password='Nordea22#'
    )
    
    # Create a cursor object
    mycursor = mydb.cursor()
    
    # Execute the command to create the database
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

except mysql.connector.Error as e:
    print(f"Error: {e}")  # More specific error handling
else:
    print("Database 'alx_book_store' created successfully!")
finally:
    # Ensure cursor and connection are closed properly
    if mycursor:
        mycursor.close()
    if mydb.is_connected():
        mydb.close()
    print("Database connection closed.")
