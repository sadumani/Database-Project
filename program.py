import mysql.connector
from mysql.connector import errorcode

try:
    # Database connection is being created
   cm_connection = mysql.connector.connect(
      user="manideep",
      password="Manideep@123",
      host="127.0.0.1",
      database="SMFRL_company")

except mysql.connector.Error as err:
   if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
      print("Invalid credentials")
   elif err.errno == errorcode.ER_BAD_DB_ERROR:
      print("Database not found")
   else:
      print("Cannot connect to database:", err)

else:
   # Cursor is being created here to running queries 
    my_cursor = cm_connection.cursor()
# SELECT command to show data in Customers table.
    query = ("SELECT * FROM Customers")
    my_cursor.execute(query) 
# Display query results
    print("-----------------------")
    print("Data from Customer Table:")
    for row in my_cursor.fetchall():
        print("customer_id:{} \tname:{} \temail:{} \taddress:{} ".format(row[0], row[1], row[2], row[3]))
    print("-----------------------")
# SELECT command to show data in Payment table.
    query = ("SELECT * FROM Payment")
    my_cursor.execute(query) 
# Display query results
    print("-----------------------")
    print("Data from Payment Table:")
    for row in my_cursor.fetchall():
        print("payment_id:{} \tsales_id:{} \tpayment_method:{} \tdate:{} ".format(row[0], row[1], row[2], row[3]))
    print("-----------------------")
# SELECT command to show data in Products table.
    query = ("SELECT * FROM Products")
    my_cursor.execute(query) 
# Display query results
    print("-----------------------")
    print("Data from Products Table:")
    for row in my_cursor.fetchall():
        print("product_id:{} \tname:{} \tprice:{}".format(row[0], row[1], row[2]))
    print("-----------------------")
# SELECT command to show data in Sales table.
    query = ("SELECT * FROM Sales")
    my_cursor.execute(query) 
# Display query results
    print("-----------------------")
    print("Data from Sales Table:")
    for row in my_cursor.fetchall():
        print("sales_id:{} \tproduct_id:{} \tcustomer_id:{} \tquantity:{} \ttotal_amount:{} ".format(row[0], row[1], row[2], row[3], row[4]))
    print("-----------------------")
# SELECT command to show data in Stock table.
    query = ("SELECT * FROM Stock")
    my_cursor.execute(query) 
# Display query results
    print("-----------------------")
    print("Data from Stock Table:")
    for row in my_cursor.fetchall():
        print("stock_id:{} \tproduct_id:{} \tavailable_quantity:{}".format(row[0], row[1], row[2]))
    print("-----------------------")
# Closing the cursor
    my_cursor.close()
#Closing the connected database connection
    cm_connection.close()