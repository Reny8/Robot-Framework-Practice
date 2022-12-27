*** Test Cases ***
Normal test case with embedded arguments
    The result of 1 + 1 should be 2
    The result of 1 + 2 should be 3

Template with embedded arguments
    [Template]    The result of ${calculation} should be ${expected}
    1 + 1    2
    1 + 2    3
Different argument names
    [Template]    The result of ${foo} should be ${bar}
    1 + 1    2
    1 + 2    3

Only some arguments
    [Template]    The result of ${calculation} should be 3
    1 + 2
    4 - 1

New arguments
    [Template]    The ${meaning} of ${life} should be 42

*** Keywords ***
The result of ${calculation} should be ${expected}
    ${result} =    Evaluate    ${calculation}
    Should Be Equal    ${result}     ${expected}

The ${meaning} of ${life} should be 42
    ${result} =    Evaluate    ${meaning} * ${life}
    Should Be Equal As Numbers    ${result}    42 


