*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When amount is given counter is set to that amount
   Go To  ${HOME_URL}
    Fill Text  input[name="value"]  0
    Click  button >> text=Aseta
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 1 kertaa
    Fill Text  input[name="value"]  10
    Click  button >> text=Aseta
    Get Text  body  *=  nappia painettu 10 kertaa
    Click  button >> text=Paina
    Get Text  body  *=  nappia painettu 11 kertaa
