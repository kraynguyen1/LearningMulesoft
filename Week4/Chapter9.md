### Chapter 9: Controlling event flows
## Concepts
- [ ] Use different routers and validators to control event flow
- [ ] **CHOICE router**: to send an event to one route based on conditional logic (eg. IF statement)
- [ ] **Scatter-Gather router**: to send an event concurrently to multiple routes which returns a collection of all results.
- [ ] Use Validation module to specify whether an event can proceed in a flow

## Quizzes
1. **Q**: How are multiple conditions used in a Choice router to route events
- [ ] **A:** To find first true condition, then distribute the event to the one matched route
2. **Q**: A Scatter-Gather processes 3 separate HTTP requests. Each request returns a Mule event with a JSON payload. What is the final output of the Scatter-Gather?
- [ ] **A:** An object containing all three Mule event objects
3. 
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week4/Screenshot%202021-07-16%20155801.png)
- [ ] **A:** Transform Message
4. **Q**: An event contains a payload that is an array of objects. How is the event routed in a Scatter-Gather?
- [ ] **A:** The entire event is sent to each route and proccessed in parallel
5. **Q**: What module and operation will throw an error if a mule event's payload is not a number?
- [ ] **A:** Validation module's Is number operation







