### Chapter 11: Writing Dataweave Transformations
## Concepts
- [ ] Dataweave formatting
    * Datacode can be inline, in a DWL file, or in a module of functions
    * The **data model** for a transformation can consist of 3 different types of data: objects, arrays, and simple literals
    * **Many formats** can be used as input and output including JSON, JAVA, XML, CSV, EXCEL, etc.
    * Dataweave **application/dw** format can be used to test expressions to ensure there are no scripting errors
    * Use the **map** function to apply a transformation function (lambda) to each item in an array
    * **Lambda:** anonymous function not bound to an identifier
    * When mapping array elements (json/Java) to XML, wrap the map function in {(...)}
    * Dataweave is a functional programming language where variables behave just like functions
- [ ] Variables assignment with Dataweave
    * Define global variables in the header with **var**
        * Constant or lambda expression
        * Use **fun** directive to access lambdas assigned to variables as traditional functions
    * Define local variables in the body with **do{}**
- [ ] Functions
    * Functions we have been using so far:
    ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/function.jpg)
    * Functions are packaged in modules
        * Functions in core modules are imported automatically
        * Use the **import** header to import functions in all other modules
    * Functions with 2 parameters can be called with 2 different syntax
    * Use metadata **format** schema property to format #'s and dates
    * Use the **type** header to specify custom data types
    * Transform objects to POJOS using: as Object {class: "com.myPOJO"}
    * Use **lookup()** to get data by calling other flows  

## Quizzes
1. A Mule application has a main flow and a combineNames flow. In the main flow, a variable named fullName is set to the object {firstName:"Max", lastname: "Mule"} What is valid DW code to call combineNames flow with the input object stored in the fullName variable
- [ ] **A:** #[lookup("combineNames",vars.fullName)]
2.
![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/Q1.png)
- [ ] **A:** payload filter $.price < 500 orderBy $.price groupBy $.toAirport
3. What DW 2.0 type can be used as input a map operation?
- [ ] **A:** Array
4. ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/Q2.png)
- [ ] **A:** ![](https://github.com/kraynguyen1/LearningMulesoft/blob/main/Week5/A2.png)
5. What is the correct way to format the decima 20.3844 as a string to two decimal places
- [ ] **A:** 20.3844 as String{format: ".0#"}









