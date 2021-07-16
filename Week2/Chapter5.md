### Concepts
- [ ] **Cloudhub**: PaaS component of Anypoint platform which hosted Mule runtime(workers) on AWS
- [ ] **API proxy**: Application that controls access to a web service, restricting access and usage through the use of an API gateway
- [ ] **API Gateway runtime:** controls access to APIs by enforcing policies
- [ ] **API Manager:**
  * Create and deploy API proxies
  * Define SLA tiers and apply runtime policies (# of requests, rate-limiting, etc. type of policies)
  * Approve, reject, or revoke access to APIs by clients
  * Promote managed APIs between environment
  * Review API analytics 
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week2/Screenshot%202021-07-16%20133549.png)

### Quizzes
1. **Q**: How does APIkit determine the number of flows to generate from a RAML spec
- [ ] **A:** Creates a sepatate flow for each HTTP method
2. **Q**: A database connector is configured to select rows from a MySQL database. What is the format of the array of results returned from the database query?
- [ ] **A:** Java
4. **Q**: What is the minimum required configuration in a flow for a Mule application to compile?
- [ ] **A:** An event processor
5. **Q**: What is the purpose of the api: router element in APIkit?
- [ ] **A:** Validates requests against RAML API specs and routes them to API implementations







