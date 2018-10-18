Class {
	#name : #MDLMGReportExampleTask,
	#superclass : #WATask,
	#category : 'Material-Design-Lite-Magritte-Examples'
}

{ #category : #accessing }
MDLMGReportExampleTask class >> label [
	^ 'Magritte Report example'
]

{ #category : #private }
MDLMGReportExampleTask >> createReportBasedOn: reportChooser [

	| theReport |
	
	theReport := MDLMAReport rows: self demoRows description: MDLMGExampleFormDescription new magritteDescription. 
	
	^ MDLMGReportWrapper new
		report: theReport ;
		yourself
]

{ #category : #private }
MDLMGReportExampleTask >> demoRows [

	| rows |
	
	rows := OrderedCollection new.
	Collection withAllSubclasses doWithIndex: [ :each :index |
		rows add: (MDLMGExampleFormDescription new
			name: each name;
			number: index ;
			bePositive: index odd ;
			yourself ) ].
	^ rows


]

{ #category : #running }
MDLMGReportExampleTask >> go [
	| chosenReport reportChooser |
	reportChooser := self call: self reportChooser.
	chosenReport := (self createReportBasedOn: reportChooser).
	
	self call: chosenReport
]

{ #category : #private }
MDLMGReportExampleTask >> reportChooser [
	^ MDLMGReportChooser new 
		asComponent addDecoration: 
			(MDLMAFormDecoration 
				buttons: 
					(Array with: 
						#save -> 'Create a new report'));
		yourself
]
