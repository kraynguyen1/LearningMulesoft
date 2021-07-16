### Chapter 10: Handling errors
## Concepts
- [ ] An error object has 2 properties:
* error.description (String)
* error.errorType (Object)
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








