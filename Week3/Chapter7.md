### Chapter 7: Structuring Mule applications
## Concepts:
- [ ] Separate functionality into multiple applications to allow managing and monitoring them as separate entities
- [ ] Mule applications are Maven projects which builds a Mule deployable archive JAR from multiple dependencies
- [ ] Separate application functionality into multiple configuration files is easier for development and maintenance (Eg. Encapsulate global elements into their own config file)
- [ ] Share resources between applications by creating a shared domain
- [ ] Define application Properties in a YAML file and reference them as ${"property here"}
* ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week3/Screenshot%202021-07-16%20153321.png)
- [ ] Application metadata is stored in application-types.xml
- [ ] Create applications composed of multiple flows and subflows for better readability, maintenance, and reusability
- [ ] Use Flow reference to call flows synchronously
- [ ] Use the VM connector to pass events between flows using asynchronous queues

## Quizzes:
1. **Q**: What can ONLY be done with VM connectors, and NOT with Flow References, in a single Mule application?
- [ ] **A:** Allow a flow to pass events to another flow asynchronously
2. **Q**: In what file does the Mule project keep track of all of its dependencies
- [ ] **A:** pom.xml
3. **Q**: Why must a Mule applications's deployable archive package all its dependencies in order to be deployed to Cloudhub?
- [ ] **A:** Cloudhub workers CANNOT download ALL possible project dependencies a project may contain
4. ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week3/Screenshot%202021-07-16%20154030.png)
- [ ] **A:** The env propery is NOT set in the Runtime Manager in the Mule application's properties tab
5. **Q**: What reserved property can be defined and used in a Mule application to allow an HTTPS Listener to be accessed by external web clients after the Mule application is deployed to CloudHub?
- [ ] **A:** ${http.port}
6. **Q**: A Mule application has 2 flows named parentFlow and childFlow. A variable is defined in parentFlow. What is the scope of the variable when the parentFlow calls childFlow using a Flow Reference:
- [ ] **A:** The variable is accessible in childFlow, can be changed, and changes are seen back in parentFlow
