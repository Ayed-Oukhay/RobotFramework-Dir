*** Settings ***
Library                ../CustomLibs/hello-world.py   

*** Variables ***
${WELCOME-MSG}         Hello, Robot Framework!
${SUCC-MSG}            Numbers are equal!
${FAIL-MSG}            Numbers are NOT equal!

*** Test Cases ***
Using the Custom Library
    Hello World

First Test Case (Successful)
    Log                ${WELCOME-MSG}
    Should Be Equal    ${1}    ${1}
    Log                ${SUCC-MSG}

Second Test Case (Fail)
    Log                ${WELCOME-MSG}
    Should Be Equal    ${1}    ${2}
    Log                ${FAIL-MSG}
               