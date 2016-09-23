running
go
	| chosenReport reportChooser |
	reportChooser := self call: self reportChooser.
	chosenReport := (self createReportBasedOn: reportChooser).
	
	self call: chosenReport