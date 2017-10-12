@startuml

skinparam componentStyle uml2

'Title'

skinparam titleBorderRoundCorner 15
skinparam titleBorderThickness 2
skinparam titleBorderColor black

title
    <b><&shield> Threat Model - <u><i>French Toast App</i></u></b>
    Risk level: <b>HIGH</b>
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

cloud "Toast Intel sources" as TIS
cloud "Sample Now" as SN
database "Toast Intel framework" as TIF
database "TIP doughbase" as TIPdb
[Toast Intel Platform] as TIP
[sugar Tools] as ST
actor taster
actor "Other tasters" as OT

frame frenchToast  {
    [Collector] as Col
    database "frenchToast doughbase" as Bfdb
    interface "taster table" as Awt
    [frenchToast Backend API] as Bbapi
    [gluten Backend API] as Gapi
}

frame "sugar Backend" {
    database "Cane Store" as Vdb
}

'Links Section'

taster <--> Awt : Invited
Awt <--> Bbapi
Bbapi <--> Gapi : secure
TIS --> TIF
TIPdb <--> TIP : insecure
Bfdb --> Vdb
Bfdb <--> TIPdb
ST --> Col
Col --> Gapi : insecure
Gapi --> TIF
Gapi --> ST
ST --> Col
ST --> TIP
Bbapi <--> SN : secure
SN <--> OT : Uninvited


'Threat Model Section'

note bottom of Gapi #lightgreen {
    ==**Risk - __LOW__**==
    --**Threat Factors**--
    * Handles sensitive data? **No**
    * Authenticates? **Both**
    --**Recommendations**--
    --**Comments**--

}

note right of OT #red {
    ==**Risk - __HIGH__**==
    --**Threat Factors**--
    * Handles sensitive data? **Yes**
    * Authenticates? **No**
    * Authorizes? **No**
    * Encrypts (Communication)? **No**
    --**Recommendations**--
    Other users need to be authenticated
    --**Comments**--
    
}

note top of Vdb #yellow {
    ==**Risk - __MEDIUM__**==
    --**Threat Factors**--
    * Handles sensitive data? **Yes**
    * Validates input? **No**
    * Encodes outout? **No**
    --**Recommendations**--
    --**Comments**--
}

note bottom of TIF #grey {
    ==**Risk - __TBD__**==
    --**Threat Factors**--
    * TBD
    --**Recommendations**--
    --**Comments**--
}

@enduml