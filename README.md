# 🚀 Flutter Calculator App

A simple Calculator app made with flutter

# 💫 Features
Basic Arithmetic: Supports addition, subtraction, multiplication, and division.  
Real-time Calculation: Uses the math_expressions package to parse and evaluate mathematical strings dynamically.  
User-Friendly Interface: Built with a visually appealing layout using Card widgets and a custom color palette.  
Clear Functionality: Includes a dedicated backspace/clear button to reset the input and results.  

# 👨‍💻 Technical Stack
 ![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white) ![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)

Dependency: math_expressions (for handling expression parsing and evaluation)  
---
# How It Works
The application leverages the ShuntingYardParser class from the math_expressions library to convert string-based user input into mathematical expressions, which are then evaluated as real-time double values. The UI is managed using StatefulWidget, allowing for seamless updates to the display whenever buttons are pressed.  

