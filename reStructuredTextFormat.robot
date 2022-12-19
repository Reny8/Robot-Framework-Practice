..code:: robotframework
*** Settings ***
Documentation    Example using the restructuredText format
Library          OperatingSystem

*** Variables ***
${MESSAGE}       Hello, world!

*** Tasks ***
My Test
    [Documentation]    Example test
    Log     ${MESSAGE}
    My Keyword     ${CURDIR}

Another Test
    Should Be Equal    ${MESSAGE}    Hello, world!

*** Keywords ***

My Keyword        [Arguments]    ${path}




 