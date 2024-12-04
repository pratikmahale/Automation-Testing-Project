# Automation Testing Project: Login and API Testing for Landmark Website

This project focuses on automating the login functionality and testing an API endpoint (`/generateAuthToken`) for the Landmark website using **Robot Framework** and **Selenium**. The deliverables include test case documentation, automation scripts, and generated reports.

---

## 1. Project Overview

The project automates:
- **Login Scenarios**: Using a web-based interface with the provided credentials.
- **API Testing**: Testing the `/generateAuthToken` endpoint based on the Swagger documentation.

The framework ensures modularity and scalability, making it easy to add new test cases.

---

## 2. Tools and Frameworks Used

The following tools were used to implement the project:
- **Robot Framework**: For creating and running test scripts.
- **SeleniumLibrary**: For web automation testing.
- **RequestsLibrary**: For API automation testing.
- **Python 3.9+**: As the base programming language.
- **Swagger**: For understanding API functionality.

---

## 3. Problem Statement

This project focuses on automating the login functionality and testing the `/generateAuthToken` API endpoint for the Landmark website. 
The key tasks include:
- Automating login functionality for various scenarios using Robot Framework and Selenium.
- Testing the `/generateAuthToken` API endpoint using Swagger documentation.
- Providing test case documentation, automation scripts, and detailed execution reports.

--- 

## 4. Login Credentials

- **Website URL**: [Landmark Login](https://landmark.taqtics.co)
- **Username**: `intern@taqtics.co`
- **Password**: `TestIntern@123`

---

## 5. API Details

- **Swagger Documentation**: [API Docs](https://landmark.taqtics.co/api-docs/)
- **Endpoint**: `/generateAuthToken`
- **Description**: This endpoint generates an authentication token for admin users. Since the provided credentials are not for an admin user, an error response is expected.

---

## 6. Derived Test Scenarios

### Login Test Scenarios
1. Valid login with correct username and password.
2. Invalid login with incorrect username or password.
3. Login attempt with empty username or password fields.
4. Login with special characters in input fields.
5. Login functionality after multiple failed attempts.

### API Test Scenarios
1. Valid request with admin credentials (expected success).
2. Request with non-admin credentials (expected failure).
3. Request with missing credentials (expected error).
4. Request with invalid token format.

---

## 7. Prerequisites

Before running the tests, ensure the following:
1. **Python Installation**: Python 3.9 or higher should be installed.  
   Download from [python.org](https://www.python.org/downloads/).
2. **Browser Driver**: Install the appropriate browser driver (e.g., ChromeDriver, GeckoDriver).
   - Add the driver to your system PATH.
   - Download ChromeDriver: [chromedriver.chromium.org](https://chromedriver.chromium.org/).

---

## 8. Installation


### Step 1: Clone the Repository

 ```bash
    git clone https://github.com/pratikmahale/Automation-Testing-Project.git
    cd Automation-Testing-Project

 ````
    
### Step 2: Install Dependencies
 ```bash
     pip install -r requirements.txt
 ```
### Step 3: Verify Installation

Ensure all required libraries are installed:

1. Robot Framework
2. SeleniumLibrary
3. RequestsLibrary

Check by running:
 ```bash
   pip list
  ```

---

## 9. Project Structure

├── Tests
│   ├── LoginTests.robot              # Robot Framework script for login scenarios
│   ├── ApiTests.robot                # Robot Framework script for API testing
├── Resource
│   ├── keywords.robot                 # Custom reusable keywords
├── Reports
│   ├── output.html                    # HTML report generated after test execution
│   ├── log.html                       # Detailed log of the execution
│   ├── report.html                    # Summary report of the execution
├── README.md                          # Project documentation (this file)
└── requirements.txt 

---

## 10. Test Execution

### Step 1: Running All Tests
Run all the test cases using the following command:
 ```bash
  robot -d reports tests
 ```
### Step 2: Running Login Tests Only
Run tests related to the login functionality:
 ```bash
  robot -d reports tests/LoginTests.robot
  ```
### Step 3: Running API Tests Only
Run tests  related to the /generateAuthToken endpoint:
 ```bash
    robot -d reports tests/ApiTests.robot
 ```  
---

## 11. Test Reports

### After executing the tests, reports are generated in the Reports folder:

- output.html: Detailed execution report.
- log.html: Comprehensive logs for debugging.
- report.html: Summary report with pass/fail status.

### To view these reports:

1. Open the respective file[output.xml](Reports/output.xml) in a web browser.
2. Analyze the test results and logs.

---

## 12. Error Handling and Edge Cases

- Ensured proper handling of invalid inputs for login scenarios (e.g., special characters, empty fields).
- Validated API responses for both success and error scenarios using detailed assertions.
- Captured screenshots for failed test cases during web automation.

---

## 13. Known Limitations

1. The `/generateAuthToken` API cannot generate a valid token with the provided non-admin credentials.
2. Tests are designed to run on Chrome; additional configuration is needed for other browsers.

---

## 14. Future Scope

1. Expand the test suite to include additional API endpoints.
2. Implement cross-browser testing for web automation.
3. Integrate the framework with CI/CD pipelines for continuous testing.

---

## 15. Additional Commands

- Rerun failed tests:
  ```bash
  robot --rerunfailed output.xml -d reports tests

- Clean up generated reports:
  ```bash
    rm -rf reports/*
  
---

## 16. References

- [Robot Framework Documentation](https://robotframework.org/)
- [SeleniumLibrary Documentation](https://robotframework.org/SeleniumLibrary/)
- [Swagger Documentation](https://swagger.io/docs/)

---

## 17. Contribution Guidelines

Contributions are welcome! If you'd like to contribute:
- Fork the repository.
- Create a feature branch.
- Commit your changes with a clear message.
- Create a pull request for review.

---




