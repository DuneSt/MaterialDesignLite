private
createReportBasedOn: reportChooser

	| theReport |
	
	theReport := MDLMAReport rows: self demoRows description: MDLMGExampleFormDescription new magritteDescription. 
	
	^ MDLMGReportWrapper new
		report: theReport ;
		yourself