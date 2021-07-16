### Chapter 6: Accessing and Modifying Mule events
## Concepts:
- [ ] **Mule Debugger**: Best method to view event data by adding breakpoints to a flow
- [ ] **Logger**: display data in the console
- [ ] **Set Payload**: Transformer that set the payload of the mule event
- [ ] **Set Variable**: Transformer that create variables
- [ ] **HTTP Listener**: define a response to the client by setting a response header
- [ ] **HTTP Request**: define a get request by set a request query parameter
- [ ] **Dataweave basics**:
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week3/Screenshot%202021-07-16%20150833.png)
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week3/Screenshot%202021-07-16%20150848.png)

## Quizzes:
1. **Q**: What happens to the attributes of a Mule event in a flow after an outbound HTTP Request is made
- [ ] **A:** Atrributes are replaced with new attributes from the HTTP Request response(which might be NULL)
2. **Q**: A Set Variable component saves the current payload to a variable with the name images. What is the DataWeave expression to access the images variable?
- [ ] **A:** #[vars.images]
3. 
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week3/q3mule.png)
- [ ] **A:** #[attributes.uriParams.state]
4. 
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week3/Q6mule.png)
- [ ] **A:** #[payload[1].city]
5. **Q**: A flow contains an HTTP listener as the event source. What is the DataWeave expression to log the Content-Type header using a Logger component
- [ ] **A:** #["Content-Type: " ++ attributes.headers.'content-type']
6. ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week3/Q7mule.png)
- [ ] **A:** The variable is accessible. All the attributes passed to childFlow are removed or replaced
7. ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week3/q8Mule.png)
- [ ] **A:** The variable is NOT accessible in the server
