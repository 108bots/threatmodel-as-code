# threatmodel-as-code using PlantUML

In the age of DevOps, everything is code. Can you code your threat models? Sure. Read on!

As a security engineer, tradionally you took out your [Microsoft threat model tool](https://www.microsoft.com/en-us/download/details.aspx?id=49168) and after several 'clicks n drags' drew up a threat model. You then sat with your dev/architect and triaged all those STRIDE threats, whether they are applicable or not. 

[PlantUML](http://plantuml.com/) is used to draw UML diagrams, using a simple and human readable text description. You can now create your architecture or component diagrams using PlantUML, simply by writing a few lines of code without ever having to 'click'. Try it out at https://www.planttext.com/

## Threat model using PlantUML

Once your component diagram is created using PlantUML, you capture your threat model in the very same diagram by: 

* Annotating objects and links, 
* Color coding them, 
* Grouping components to indicate boundaries, and
* Capturing the risks/threats & recommendations. 

## How do you use it

You can use it in a few ways:

1. You are in a threat model discussion with your dev/architect and they don't have an architecture diagram ready. Rather than whiteboarding or taking notes on a napkin. Write a few lines of code to capture the architecture and then,
* Ask your threat modeling questions
* Annotate your components based on the answers you receive and risk you identify
* Provide your recommendations with notes, links etc
* Check it in to your repo

2. Show your dev/architect how to use PlantUML, convince them to create architecture diagrams. You then overlay your threat model on top by adding few more lines of code of your own that capture your threat model Q&As, risk and recommendations.  

3. Get your dev/architect to use your Threat model embededed template PlantUML to draw their architecture diagrams, answer your questions and generate the initial threat model themselves. You can then review it and modify as necessary.

## Benefits

* Check in your threat model to your code repo, along with your other product artifacts. 
* Version it to track changes.
* Diff it to see how remediation has progressed or if design flaws were re-introduced.

## Example

You can use what is provided here as a template and customize it as needed. _(See tmac-template-uml.* for the template and tmac-example-uml.* for full example)_
![alt text](https://github.com/108bots/threatmodel-as-code/blob/master/tmac-example-uml.png)
