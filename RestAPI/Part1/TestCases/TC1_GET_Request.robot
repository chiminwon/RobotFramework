*** Settings ***
Library  RequestLibrary

*** Variables ***
${base_url}     https://petstore.swagger.io
${petId}  105

*** Test Cases ***
Get_Pet_By_Id
    create session  mysession    ${base_url}
    ${response} = get request   mysession   /v2/pet/105

    log to console  ${response.status_code}
    log to console  ${response.content}

*** Keywords ***
