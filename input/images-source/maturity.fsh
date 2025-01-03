@startuml
'skinparam linetype ortho
skinparam linetype polyline
hide circle
hide stereotype

'!pragma layout smetana

skinparam class<<MD>> {
 BorderColor DarkSlateGray
 BackgroundColor WhiteSmoke
 HeaderBackgroundColor #909090
}

skinparam class<<TM>> {
 BorderColor #505090
 BackgroundColor APPLICATION
 HeaderBackgroundColor SkyBlue
}

package "Specifications" as specs {
    class "**  System Function  **" as SFunction<<TM>> {
    }
    class "** Operation **" as SOperation<<TM>> {
    }
    class "**  Data  **\n**  Specfication  **" as SDR<<TM>> {
    }

SFunction -d- SOperation
SOperation -d- SDR

}


specs -r[hidden]- criteria
package criteria as "Maturity Criteria" {
    class "**Data**\n**Requirements**" as DR<<TM>> {
'            |_ derivedFrom  1..*
'            |_ component  1..*
'              |_ relativeTimeQualifier  1..*
'              |_ substanceAmountQualifier  1..*  
'              |_ productNameQualifier  1..*
'              |_ interpretation  1..*
'          --
    }


    class "**System Function**" as Function<<TM>> {
'            |_ derivedFrom  1..*
'            |_ component  1..*
'              |_ relativeTimeQualifier  1..*
'              |_ substanceAmountQualifier  1..*  
'              |_ productNameQualifier  1..*
'              |_ interpretation  1..*
'          --
    }

    class "**Role**" as Role<<TM>> {
'            |_ derivedFrom  1..*
'            |_ component  1..*
'              |_ relativeTimeQualifier  1..*
'              |_ substanceAmountQualifier  1..*  
'              |_ productNameQualifier  1..*
'              |_ interpretation  1..*
'          --
    }


    class "**Operation**" as Operation<<TM>> {
'            |_ derivedFrom  1..*
'            |_ component  1..*
'              |_ relativeTimeQualifier  1..*
'              |_ substanceAmountQualifier  1..*  
'              |_ productNameQualifier  1..*
'              |_ interpretation  1..*
'          --
    }


    class "**Strength**" as Strength<<TM>> {
'            |_ derivedFrom  1..*
'            |_ component  1..*
'              |_ relativeTimeQualifier  1..*
'              |_ substanceAmountQualifier  1..*  
'              |_ productNameQualifier  1..*
'              |_ interpretation  1..*
'          --
    }


    class "**Data Rule**" as Rule<<TM>> {
'            |_ derivedFrom  1..*
'            |_ component  1..*
'              |_ relativeTimeQualifier  1..*
'              |_ substanceAmountQualifier  1..*  
'              |_ productNameQualifier  1..*
'              |_ interpretation  1..*
'          --
    }


    class "**Target**" as Target<<TM>> {
            |_ timeline  
'            |_ component  1..*
'              |_ relativeTimeQualifier  1..*
'              |_ substanceAmountQualifier  1..*  
'              |_ productNameQualifier  1..*
'              |_ interpretation  1..*
'          --
    }


    class "**Rule Set**" as RuleSet<<TM>> {
'            |_ derivedFrom  1..*
'            |_ component  1..*
'              |_ relativeTimeQualifier  1..*
'              |_ substanceAmountQualifier  1..*  
'              |_ productNameQualifier  1..*
'              |_ interpretation  1..*
'          --
    }



}


DR -r- Rule
Function -d- Role:"                                                            "
'Function -r[hidden]- Role:" "

Role -l- Operation: "        "

DR -u[hidden]- Operation

Rule -l- Operation 
Function - Operation 
Role -d[hidden]- Rule
Rule -r- Strength: "         "

RuleSet -u- Rule
RuleSet -r- Target: "      "



SOperation .r. Operation : "                            "
SDR .r. DR : "                     "
SFunction .r[hidden]. Function 
SFunction .r[hidden]. Function 
SFunction .r. Function 


legend
* A Data Rule has:
** Data Requirements (e.g. cardinality, valueset)
** Strength
** Context:
*** System function
*** Operation
*** Role

Rules change and are in sets. 
This allows composition, setting targets and roadmaps
Roadmaps have timelines
"Maturity" score is a level of conformance.
Conformance is the assessment of implementations
(documented by specifications) against criteria.

end legend


@enduml
