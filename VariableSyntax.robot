*** Settings ***
Library    OperatingSystem


*** Test Cases ***
Nested container
    ${nested} =    Evaluate    [['a', 'b', 'c'], {'key': ['x', 'y']}]
    Log Many    @{nested}[0]        
    Log Many    @{nested}[1][key]  

Slice
    ${items} =    Create List    first    second    third
    Log Many    @{items}[1:] 


# CREATING DICTIONARY VARIABLES EXAMPLE
*** Variables ***
&{USER 1}       name=Matti    address=xxx         phone=123
&{USER 2}       name=Teppo    address=yyy         phone=456
&{MANY}         first=1       second=${2}         ${3}=third
&{EVEN MORE}    &{MANY}       first=override      empty=
...             =empty        key\=here=value

