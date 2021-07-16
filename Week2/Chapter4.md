### Chapter 4: Building APIs
## Concepts
- [ ] **Anypoint Studio**: used to build Mule applcations for integrations and API implentation
- [ ] **Mule applications**: Accept and process events through a series of event proccesors plugged together in a flow
- [ ] **Create RESTful interfaces for applications**
  * Manually by creating flows with listeners for each resource/method pairing
  * Automatically using Anypoint studio and APIkit 
- [ ] **Flow reference:** Used to pass messages to other flow. Think of it as calling another function
- [ ] **API sync:** Synchronize changes to API specs between Anypoint Studio and Platform

![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week2/Screenshot%202021-07-16%20133549.png)

## Quizzes
1. **Q**: How does APIkit determine the number of flows to generate from a RAML spec
- [ ] **A:** Creates a sepatate flow for each HTTP method
2. **Q**: A database connector is configured to select rows from a MySQL database. What is the format of the array of results returned from the database query?
- [ ] **A:** Java
4. **Q**: What is the minimum required configuration in a flow for a Mule application to compile?
- [ ] **A:** An event processor
5. **Q**: What is the purpose of the api: router element in APIkit?
- [ ] **A:** Validates requests against RAML API specs and routes them to API implementations






