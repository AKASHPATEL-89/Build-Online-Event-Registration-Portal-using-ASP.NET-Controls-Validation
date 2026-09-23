# 🎟️ Online Event Registration Portal

An **Online Event Registration Portal** built using **ASP.NET Web Forms** and **ASP.NET Validation Controls**. The project demonstrates how to create a structured event registration form with server-side validation and user-friendly input handling.

## 📌 Project Overview

The **Online Event Registration Portal** allows users to enter their event registration details through a web-based form.

The project focuses on learning and implementing:

* ASP.NET Web Forms
* ASP.NET Server Controls
* Form validation
* User input handling
* Event-driven programming
* Server-side processing using C#

The application uses ASP.NET validation controls to ensure that users provide valid information before submitting the registration form. ASP.NET provides built-in validators such as `RequiredFieldValidator`, `RangeValidator`, `CompareValidator`, and `RegularExpressionValidator` for validating user input.

## ✨ Features

* 🎟️ Online event registration form
* 📝 User-friendly registration interface
* ✅ Required field validation
* 🔍 Input validation using ASP.NET validation controls
* ⚠️ Validation error messages
* 🔄 Server-side form processing
* 💻 ASP.NET Web Forms architecture
* 🧩 C# code-behind implementation

## 🛠️ Technologies Used

| Technology                      | Purpose                          |
| ------------------------------- | -------------------------------- |
| **ASP.NET Web Forms**           | Web application framework        |
| **C#**                          | Backend and event-handling logic |
| **ASP.NET Validation Controls** | Form validation                  |
| **HTML**                        | Page structure                   |
| **Web.Config**                  | Application configuration        |
| **Visual Studio**               | Development environment          |

## 📂 Project Structure

```text
Build-Online-Event-Registration-Portal-using-ASP.NET-Controls-Validation/
│
├── Event.aspx
├── Event.aspx.cs
├── Web.Config
├── README.md
└── ...
```

### `Event.aspx`

Contains the ASP.NET Web Forms interface and registration form controls.

### `Event.aspx.cs`

Contains the C# code-behind logic used to process events and handle form interactions.

### `Web.Config`

Contains configuration settings for the ASP.NET application.

## 🔐 Validation

One of the main objectives of this project is demonstrating form validation.

ASP.NET Web Forms provides built-in validation controls that can validate user input both on the client side and again on the server side.

Examples include:

```text
RequiredFieldValidator
RangeValidator
CompareValidator
RegularExpressionValidator
CustomValidator
ValidationSummary
```

These controls help prevent incomplete or incorrectly formatted registration data from being processed.

## 🔄 Application Workflow

```text
        ┌──────────────────────┐
        │   Open Registration  │
        │        Portal        │
        └──────────┬───────────┘
                   │
                   ▼
        ┌──────────────────────┐
        │ Enter Registration   │
        │       Details        │
        └──────────┬───────────┘
                   │
                   ▼
        ┌──────────────────────┐
        │ ASP.NET Validation   │
        │       Controls       │
        └──────────┬───────────┘
                   │
             ┌─────┴─────┐
             │           │
          Invalid       Valid
             │           │
             ▼           ▼
      ┌────────────┐ ┌────────────┐
      │ Show Error │ │  Process   │
      │  Message   │ │Registration│
      └────────────┘ └────────────┘
```

## 🚀 How to Run the Project

### 1. Clone the Repository

```bash
git clone https://github.com/AKASHPATEL-89/Build-Online-Event-Registration-Portal-using-ASP.NET-Controls-Validation.git
```

### 2. Open in Visual Studio

Open the project using **Microsoft Visual Studio** with ASP.NET Web Forms/.NET Framework support.

### 3. Configure the Project

Make sure the required ASP.NET/.NET Framework components are installed and the project configuration is compatible with your development environment.

### 4. Run the Application

Press:

```text
F5
```

or use:

```text
Ctrl + F5
```

The application will open in your default browser.

## 🎯 Learning Objectives

This project was developed to understand:

* How ASP.NET Web Forms applications work
* How server controls are used
* How validation controls improve form reliability
* How C# code-behind handles user interactions
* How client-side and server-side validation work together
* How to structure a basic ASP.NET web application

## 📚 Key Concepts Demonstrated

### ASP.NET Web Forms

The project uses the Web Forms programming model for building the registration interface.

### Server Controls

ASP.NET server controls provide reusable components that can be processed on the server.

### Validation Controls

Validation controls associate validation rules with input controls and provide feedback when submitted data does not satisfy those rules.

### Code-Behind

The `Event.aspx.cs` file contains the C# logic associated with the ASP.NET page.

## 🔮 Future Improvements

Possible future enhancements include:

* 🗄️ Database integration using SQL Server
* 👤 User authentication and login
* 📋 Admin dashboard
* 🎫 Event selection and management
* 📧 Registration confirmation emails
* 📱 Responsive UI design
* 📊 Registration analytics
* 🔎 Search and filtering
* 🧾 Registration confirmation/receipt generation

## 👨‍💻 Author

**Akash Singh**

GitHub: [AKASHPATEL-89](https://github.com/AKASHPATEL-89)

## ⭐ Support

If you find this project useful for learning ASP.NET Web Forms and validation controls, consider giving the repository a ⭐.

---

### 📄 License

This project is intended for **educational and learning purposes**.
# Build-Online-Event-Registration-Portal-using-ASP.NET-Controls-Validation
