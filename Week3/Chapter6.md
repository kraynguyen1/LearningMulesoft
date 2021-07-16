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
3. **Q**: 
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week3/q3mule.png)
- [ ] **A:** At most one
5. **Q**: What does the Mule runtime use to enforce policies and limit access to APIs?
- [ ] **A:** The Mule runtime's embedded API Gateway
