### Chapter 5: Deploying and Managing APIs
## Concepts
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

## Quizzes
1. **Q**:
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week2/Screenshot%202021-07-16%20145228.png)
- [ ] **A:** Request access to the API in anypoint exchange
2. **Q**: What is the purpose of API autodiscovery?
- [ ] **A:** Allows a deployed Mule application to connect with API manager to download policies and act as its own API proxy
3. **Q**: How many Mule applications can run on a CloudHub worker?
- [ ] **A:** At most one
4. **Q**: What does the Mule runtime use to enforce policies and limit access to APIs?
- [ ] **A:** The Mule runtime's embedded API Gateway








