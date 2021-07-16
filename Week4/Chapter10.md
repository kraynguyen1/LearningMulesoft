### Chapter 10: Handlinng errors
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
![]
- [ ] **A:** To find first true condition, then distribute the event to the one matched route
2. **Q**: A Scatter-Gather processes 3 separate HTTP requests. Each request returns a Mule event with a JSON payload. What is the final output of the Scatter-Gather?
- [ ] **A:** An object containing all three Mule event objects
3. 
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week4/Screenshot%202021-07-16%20160748.png)
- [ ] **A:** The flow stops processing its Mule event and returns an error message to the HTTP Listener operation
4. **Q**: An event contains a payload that is an array of objects. How is the event routed in a Scatter-Gather?
- [ ] **A:** The entire event is sent to each route and proccessed in parallel
5. **Q**: What module and operation will throw an error if a mule event's payload is not a number?
- [ ] **A:** Validation module's Is number operation








