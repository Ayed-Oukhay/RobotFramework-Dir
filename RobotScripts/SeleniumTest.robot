*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      http://google.com
${BROWSER}  chrome

*** Test Cases ***
Open Browser and Check Title
    Open Browser       ${URL}    ${BROWSER}
    Title Should Be    Google
    [Teardown]         Close Browser