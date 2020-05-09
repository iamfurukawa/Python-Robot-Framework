*** Settings ***
Library           SeleniumLibrary
 
*** Variables ***
${GOOGLE}         https://www.google.com/
${BROWSER}        Chrome
${DELAY}          1
 
*** Keywords ***
Open Browser To Google Page
    Open Browser    ${GOOGLE}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Google Page Should Be Open
 
Google Page Should Be Open
    Title Should Be    Google

Input Username
    [Arguments]    ${username}
    Input Text  //*[@id="tsf"]/div[2]/div[1]/div[1]/div/div[2]/input    ${username}

Click On Search Button
    Click Button    //*[@id="tsf"]/div[2]/div[1]/div[3]/center/input[1]

Open Linkedin
    Click Element   //*[@href="https://br.linkedin.com/in/iamfurukawa"]
    Linkedin Page Should Be Open

Linkedin Page Should Be Open
    ${title}    Get Title
    Should Contain    ${title}    Vinicius Furukawa Carvalho