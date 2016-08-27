private
createReportBasedOn: reportChooser

	| theReport |
	
	theReport := TWBSMagritteReport rows: self demoRows description: MDLMGExampleFormDescription new magritteDescription. 
	theReport
		showBatchFirstLast: reportChooser showBatchFirstLast ;
		showBordered: reportChooser bordered ;
		showStriped: reportChooser striped ;
		showCondensed: reportChooser condensed.
	
	^ MDLMGReportWrapper new
		report: theReport ;
		yourself