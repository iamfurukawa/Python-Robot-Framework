*** Settings ***
Documentation     A test suite with a single search on Google.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resources.robot

*** Test Cases ***
Should Open Linkedin
    Open Browser To Google Page
    Input Username  Vinicius Furukawa Carvalho
    Click On Search Button
    Open Linkedin
    [Teardown]    Close Browser
 