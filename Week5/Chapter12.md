### Chapter 12: Triggering Flows
## Concepts
- [ ] **Watermark**: Timestamp that is stored each sync and then retrieved and compared against in the next sync
    * Synchronize data across data stores
    * Manual or automatic
- [ ] **File and Record**:
    * FTP, FTPS, SFTP connectors to work with files and folders
    * Use the **On new or Updated File** listener to trigger flows when files are added, created, or updated
        * Use automatic watermarking to determine if a file is new based on a creation or modification timestamp 
    * Use the **On Table Row** listener when new records are addded to a database table
        *  Use automatic watermarking to determine if a record is new
- [ ] **Scheduler**:
    * Schedule flows to run at a certain time or frequency
    * Use watermark to keep a persistent variable between scheduling events
- [ ] **Object Store**:
    * persist and share a watermark or other data across flow executions
- [ ] **JMS**:
    * Publish and consume messages
    * Connect to any JMS messaging Service that implements the JMS spec 

## Quizzes
1. ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/c12-q1.png)
- [ ] **A:** The payload is the original JSON object
2.![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/c12-q2.png)
- [ ] **A:** Array of Mule event objects
3. In the Database on Table Row operation, what does the Watermark column enable the On Table Row operation to do?
- [ ] **A:** To avoid duplicate processing of records in a database
4. ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/c12-q4.png)
- [ ] **A:**: Save the max recordID from the set of recordIDs in an ObjectStore and reference this recordID in subsequent database requests
6. ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/c12-q5.png)
- [ ] **A:** Publish consume: Synchronous. Publish: Asynchronous









