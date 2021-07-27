### Chapter 13: Processing Records
## Concepts
- [ ] **For Each**: 
    * Process individual collection elements sequentially and return the original payload
- [ ] **Batch Job Scope**:
    * Used for complex batch jobs
    * Created especially for processing datasets
    * Splits messages into individual records and performs actions upon each record
    * Can have multiple batch steps and these can have filters
    * Record-level data is persisted across steps using variables
    * Can handle record level failures so the job is not aborted
    * The batch job returns an object with the results of the job for insight into which records were processed or failed
- [ ] **Scheduler**:
    * Schedule flows to run at a certain time or frequency
    * Use watermark to keep a persistent variable between scheduling events
- [ ] **Object Store**:
    * persist and share a watermark or other data across flow executions
- [ ] **JMS**:
    * Publish and consume messages
    * Connect to any JMS messaging Service that implements the JMS spec 

## Quizzes
1. ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/c13-q1.png)
- [ ] **A:** 0

2.![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/c13-q2.png)
- [ ] **A:** 13

3. ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/c13-q3.png)
- [ ] **A:** Counter:1, stepVar: null

4. ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/c13-q4.png)
- [ ] **A:**: Counter: 1, stepVar: null

5. A Batch Job scope has 3 batch steps. An event processor in the second batch step throws an error because the input data is incomplete. What is the default behaviour of the batch job after this error is thrown?
- [ ] **A:**: All processing of the batch job stops

6. ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/c13-q6.png)
- [ ] **A:** [.333, 1]









