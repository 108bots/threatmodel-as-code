@startuml

skinparam componentStyle uml2

'Title'

skinparam titleBorderRoundCorner 15
skinparam titleBorderThickness 2
skinparam titleBorderColor black

title
    <b><&shield> Threat Model - <u><i>Template</i></u></b>
    Risk level: <b>Highest risk level of any component</b>
endtitle

'Color determined my risk level'
skinparam titleBackgroundColor red 

'Footer'

center footer Reviewed by: **108bots.net** Last Updated: **%date%**

'Legend/Help'

skinparam legendBorderRoundCorner 15
skinparam legendBorderThickness 2
skinparam legendBorderColor black
skinparam legendBackgroundColor lightblue

legend right
    ==__**HELP**__==
    --**Some Threat Factors**--
    * Handles sensitive data? **Yes/No/NA**
    * Authenticates? **Src/Dest/Both/No/NA**
    * Authorizes? **Yes/No/NA**
    * Encrypts (Communication)? **Yes/No/NA**
    * Encrypts (Storage)? **Yes/No/NA**
    * Validates input? **Yes/No/NA**
    * Santizes output? **Yes/No/NA**
    * Logs Events? **Yes/No/NA**
    --**Colors**--
    * **HIGH** Risk: <font color=red>**Red**
    * **MEDIUM** Risk: <font color=yellow>**Yellow**
    * **LOW** Risk: <font color=green>**Green**
    * **TBD** Risk: <font color=grey>**Grey**
endlegend

'Components Section'
'Define your components here'
cloud " Sample Component1" as C1
[Sample Platform1] as P1
database " Sample Database1" as D1

'Links Section'
'Define your component links here'
C1 <-> P1 : Sample Link1
P1 -> D1 : Sample Link2

'Threat Model Section'
'Add each of your components threat notes here. See legend for color gudiance'

note bottom of C1 #red {
    ==**Risk - __HIGH__**==
    --**Threat Factors**--
    * Handles sensitive data? **No**
    * Authenticates? **No**
    --**Recommendations**--
    --**Comments**--
}

note top of P1 #yellow {
    ==**Risk - __MEDIUM__**==
    --**Threat Factors**--
    * Handles sensitive data? **No**
    * Authenticates? **Dest**
    --**Recommendations**--
    [if any]
    --**Comments**--
    [if any]
}

note bottom of D1 #lightgreen {
    ==**Risk - __LOW__**==
    --**Threat Factors**--
    * Handles sensitive data? **No**
    * Authenticates? **Both**
    --**Recommendations**--
    --**Comments**--
}
@enduml