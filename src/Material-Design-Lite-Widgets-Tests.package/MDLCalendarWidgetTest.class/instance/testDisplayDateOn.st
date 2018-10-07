tests
testDisplayDateOn
	| today tommorrow afterTommorrow nextMonth |
	today := Date today.
	tommorrow := (DateAndTime today + 1 days) asDate.
	afterTommorrow := (DateAndTime today + 2 days) asDate.
	nextMonth := (DateAndTime today + 31 days) asDate.
	calendar currentDate: tommorrow.
	self deny: [ :html | calendar displayDate: afterTommorrow on: html ] generatedIncludes: 'mdl-color-text--primary'.
	self assert: [ :html | calendar displayDate: today on: html ] generatedIncludes: 'mdl-color-text--primary'.
	
	self deny: [ :html | calendar displayDate: afterTommorrow on: html ] generatedIncludes: 'mdl-color-text--primary-contrast mdl-color--primary'.
	self assert: [ :html | calendar displayDate: tommorrow on: html ] generatedIncludes: 'mdl-color-text--primary-contrast mdl-color--primary'.
	
	self deny: [ :html | calendar displayDate: tommorrow on: html ] generatedIncludes: 'disabled'.
	self assert: [ :html | calendar displayDate: nextMonth on: html ] generatedIncludes: 'disabled'