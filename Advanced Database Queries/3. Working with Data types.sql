 - MySQL data type categories
∙ Character
∙ Numeric
∙ Date and time
∙ Large Object (LOB)
∙ Spatial
∙ JSON
 
- The character types:

Type Bytes
CHAR(M)      Mx4 
VARCHAR(M)   L+1

- The integer types:

Type Bytes

BIGINT 8 
INT 4 
MEDIUMINT 3 
SMALLINT 2 
TINYINT 1
 
- Terms to know about numeric data types:

∙ Real number
∙ Precision
∙ Scale
∙ Exact numeric type
∙ Floating-point number
∙ Approximate numeric type
 
- The date and time types:

Type     Bytes
 
DATE       3 
TIME       3 
DATETIME   8 
TIMESTAMP  4 
YEAR[(4)]  1
 
- Implicitly convert a number to a string:

SELECT invoice_total, CONCAT('$', invoice_total)
FROM invoices

- Implicitly convert a string to a number:

SELECT invoice_number, 989319/invoice_number
FROM invoices

- Implicitly convert a date to a number:

SELECT invoice_date, invoice_date + 1
FROM invoices

- The syntax of the CAST function:

CAST(expression AS cast_type)

- The syntax of the CONVERT function:

CONVERT(expression, cast_type)

- Cast types you can use in these functions:

CHAR[(N)]
DATE
DATETIME
TIME
SIGNED [INTEGER]
UNSIGNED [INTEGER]
DECIMAL[(M[,D])]
 
- A statement that uses the CAST function:

SELECT invoice_id, invoice_date, invoice_total,
        CAST(invoice_date AS CHAR(10)) AS char_date,
        CAST(invoice_total AS SIGNED) AS integer_total
FROM invoices

- A statement that uses the CONVERT function:

SELECT invoice_id, invoice_date, invoice_total, 
       CONVERT(invoice_date, CHAR(10)) AS char_date, 
       CONVERT(invoice_total, SIGNED) AS integer_total
FROM invoices
  
- The FORMAT and CHAR functions:

FORMAT(number,decimal)
CHAR(value1[,value2]...)  
  
- FORMAT function examples:

Function                Result

FORMAT(1234567.8901,2) 1,234,567.89 
FORMAT(1234.56,4)      1,234.5600 
FORMAT(1234.56,0)     1,235
 
- CHAR function examples for common control characters:

Function Control character

CHAR(9) Tab 
CHAR(10)Line feed 
CHAR(13)Carriage return

- A statement that uses the CHAR function:

SELECT CONCAT(vendor_name, CHAR(13,10),
       vendor_address1, CHAR(13,10),
       vendor_city, ', ', vendor_state,' ', vendor_zip_code)
FROM vendors
WHERE vendor_id = 1
 




