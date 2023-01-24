Pet Store API - Order

For testing these scenarios we will need: 1.Postman or similar tool to perform HTTP requests

---post---
---get---
---delete---

Scenario 1: Create store order
Pre-condition:

https://petstore.swagger.io/v2/store/order is working
request body form of: { "id": 0, "petId": 0, "quantity": 0, "shipDate": "2022-12-13T06:50:44.322Z", "status": "placed", "complete": true }
Steps:

send POST request in Postman (or any tool you are familiar with) to the endpoint from pre-requisites (1) with body from pre-requisites (2)
Expected result: { "id": 23, "petId": 0, "quantity": 0, "shipDate": "2022-12-13T06:50:44.322+0000", "status": "placed", "complete": true } response: 200

Actual result: { "id": 23, "petId": 0, "quantity": 0, "shipDate": "2022-12-13T06:50:44.322+0000", "status": "placed", "complete": true } response: 200

Scenario 2: Create duplicate store order
Pre-condition:

https://petstore.swagger.io/v2/store/order is working
request body form of: { "id": 23, "petId": 0, "quantity": 0, "shipDate": "2022-12-13T06:50:44.322Z", "status": "placed", "complete": true }
Steps:

send POST request in Postman (or any tool you are familiar with) to the endpoint from pre-requisites (1) with body from pre-requisites (2)
Repeat step 1.
Expected result: response: 4xx, 403, 409, 422 response body: { responseCode: 403 error: Order already exists }

Actual result:

response body: { "id": 23, "petId": 0, "quantity": 0, "shipDate": "2022-12-13T06:50:44.322+0000", "status": "placed", "complete": true } response: 200

Scenario 3: to get order by id 
Pre-condition:

URL https://petstore.swagger.io/v2/store/order/{order_id} available
order_id = 23
Steps:

Send GET request in Postman to the endpoint in pre-condition 1.
go to Query Params
enter "order" in KEY
enter "23" in VALUE
Expected result:

body response: { "id": 23, "petId": 0, "quantity": 0, "shipDate": "2022-12-13T06:50:44.322+0000", "status": "placed", "complete": true } response: 200

Actual result:

response body: { "id": 23, "petId": 0, "quantity": 0, "shipDate": "2022-12-13T06:50:44.322+0000", "status": "placed", "complete": true } response: 200

Scenario 4: incorrect order id 
Pre-condition:

URL https://petstore.swagger.io/v2/store/order/{order_id} available
order_id = 0
Steps:

Send GET request in Postman to the endpoint in pre-condition 1.
go to Query Params
enter "order" in KEY
enter "0" in VALUE
Expected result:

body response: { "code": 1, "type": "error", "message": "Order not found" } response: 404

Actual result:

response body: { "code": 1, "type": "error", "message": "Order not found" } response: 404

Scenario 5: delete order id 23 
Pre-condition 1: 

URL https://petstore.swagger.io/v2/store/order/{order_id} is working
order_id = 23
send POST request in Postman with id 23 
Pre-condition 2:

URL https://petstore.swagger.io/v2/store/order/{order_id} available
order_id = 23
Steps:

Send DELETE request in Postman to the endpoint in pre-condition 1.
go to Query Params
enter "order" in KEY
enter "23" in VALUE
Expected result:

body response: { "code": 200, "type": "unknown", "message": "23" } response: 200

Actual result:

response body: { "code": 200, "type": "unknown", "message": "23" } response: 200

Scenario 6: delete order which doesn't exist
Pre-condition 1: 

URL https://petstore.swagger.io/v2/store/order/{order_id} is working
order_id = 23


Step 1:

Send POST request in Postman with id 23 in pre-condition 1.

Step 2:
Send DELETE request in Postman with id 23 in pre-condition 1.

Step 3:
Send DELETE request in Postman with id 23 in pre-condition 1.
Expected result:

body response: { "code": 404, "type": "unknown", "message": "Order Not Found" } response: 404

Actual result:

response body: { "code": 404, "type": "unknown", "message": "Order Not Found" } response: 404

Scenario 7: to get inventories by status 
Pre-condition:

URL https://petstore.swagger.io/v2/store/inventory available
Steps:

Send GET request in Postman to the endpoint in pre-condition 1.
Expected result:

body response: { "totvs": 1, "sold": 6, "ACTIVO": 1, "string": 533, "unavailable": 5, "pending": 8, "available": 420, "pendente": 1, "hello": 1, "peric": 4, "totvs1": 1 } response: 200

Actual result:

response body: { "totvs": 1, "sold": 6, "ACTIVO": 1, "string": 533, "unavailable": 5, "pending": 8, "available": 420, "pendente": 1, "hello": 1, "peric": 4, "totvs1": 1 } response: 200

Scenario 8: entering wrong value in "sold" 
Pre-condition:

URL https://petstore.swagger.io/v2/store/inventory available
go to Query Params
enter "sold" in KEY
enter "0" in VALUE
Steps:

Send GET request in Postman to the endpoint in pre-condition 1.
Expected result:

response: 404

Actual result:

response body: { "totvs": 1, "sold": 6, "ACTIVO": 1, "string": 533, "unavailable": 5, "pending": 8, "available": 420, "pendente": 1, "hello": 1, "peric": 4, "totvs1": 1 } response: 200