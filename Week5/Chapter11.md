### Chapter 11: Writing Dataweave Transformations
## Concepts
- [ ] Dataweave formatting
    * Datacode can be inline, in a DWL file, or in a module of functions
    * The data model for a transformation can consist of 3 different types of data: objects, arrays, and simple literals
    * Many formats can be used as input and output including JSON, JAVA, XML, CSV, EXCEL, etc.
    * Dataweave application/dw format can be used to test expressions to ensure there are no scripting errors
    * Use the map function to apply a transformation function (lambda) to each item in an array
    * Lambda: anonymous function not bound to an identifier
    * When mapping array elements (json/Java) to XML, wrap the map function in {(...)}
    * Dataweave is a functional programming language where variables behave just like functions
- [ ] Variables assignment with Dataweave
    * Define global variables in the header with var
        * Constant or lambda expression
        * Use fun directive to access lambdas assigned to variables as traditional functions
    * Define local variables in the body with do{}
- [ ] Functions
    * Functions we have been using so far:
    ![]()
    * Functions are packaged in modules
        * Functions in core modules are imported automatically
        * Use the import header to import functions in all other modules
    * Functions with 2 parameters can be called with 2 different syntax
    * Use metadata **format** schema property to format #'s and dates
    * Use the **type** header to specify custom data types
    * Transform objects to POJOS using: as Object {class: "com.myPOJO"}
    * Use **lookup()** to get data by calling other flows  
* Error type is identified by a namespace(Eg. HTTP) and an identifier (EG: UNAUTHORIZED) 
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week4/Errortype.png)
- [ ] An application can have system or messaging errors:
* System errors are thrown at the system level and involve no event:
  * Occur during applciation start-up or when a connection to an external system fails
  * Non-configurable, but logs the error and for connections, executes any reconnection strategy
* Messaging errors are thrown when a problem occurs within a flow:
  * Normal flow execution stops and the event is passed to an error handler (if defined)
  * By default, unhandled errors are logged and propagated
  * HTTP listeners return success or error responses depending upon how the error is handled
  * Subflow CANNOT have their own error handlers
* Messaging errors can be handled at various levels:
  * **Application level:** define an error handler outside any flow and then configuring the application to use it as the default error handler.
  * **Flow level:** add error scopes to the error handling section of a flow
  * **Processor level:** encapsulating an event processor in a Try scope that has its own error handling section
  * ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week4/errorlevel.png)
* Each error handler can have one or more error scopes
* An error is handled by the first error scope with a matching condition
  * **On error propagate:** rethrows the error up the execution chain (Eg. child flow to parent flow)
  * **On error continue:** handles the error and then continues the execution of the parent flow 
* Error types for module operation can be mapped to custom error types
* By default, interfaces created with APIkit have error handlers with multiple on error propagate scopes that handle APIkit errors. 
## Quizzes
1.
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week4/q1_c10.png)
- [ ] **A:** Error-main flow
2.
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week4/q2_c10.png)
- [ ] **A:** Validate - Payload is an Integer
3. 
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week4/q3_c10.png)
- [ ] **A:** GlobalErrorHandler
4. **Q**: How can an error scope be configured to catch all errors in the HTTP namespace?
- [ ] **A:** Type: "When: #[error.errorType.namespace == "HTTP"]"
5.
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week4/q4_c10.png)
- [ ] **A:** Error- main flow
6.
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week4/q6_c10.png)
- [ ] **A:** The MULE:EXPRESSION error's message









