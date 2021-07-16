### Chapter 7: Structuring Mule applications
## Concepts:
- [ ] Separate functionality into multiple applications to allow managing and monitoring them as separate entities
- [ ] Mule applications are Maven projects which builds a Mule deployable archive JAR from multiple dependencies
- [ ] Separate application functionality into multiple configuration files is easier for development and maintenance (Eg. Encapsulate global elements into their own config file)
- [ ] Share resources between applications by creating a shared domain
- [ ] Define application Properties in a YAML file and reference them as ${"property here"}
* 
- [ ] Application metadata is stored in application-types.xml
- [ ] Create applications composed of multiple flows and subflows for better readability, maintenance, and reusability
- [ ] Use Flow reference to call flows synchronously
- [ ] Use the VM connector to pass events between flows using asynchronous queues
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

