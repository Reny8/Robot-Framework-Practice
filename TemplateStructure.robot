# FOR LOOP STRUCTURE

# *** Test Cases ***
# Template with FOR loop
#     [Template]    Example keyword
#     FOR    ${item}    IN    @{ITEMS}
#         ${item}    2nd arg
#     END
#     FOR    ${index}    IN RANGE    42
#         1st arg    ${index}
#     END

# ----------------------------------------------

# IF/ELSE STRUCTURE 

# *** Test Cases ***
# Template with FOR and IF
#     [Template]    Example keyword
#     FOR    ${item}    IN    @{ITEMS}
#         IF  ${item} < 5
#             ${item}    2nd arg
#         END
#     END