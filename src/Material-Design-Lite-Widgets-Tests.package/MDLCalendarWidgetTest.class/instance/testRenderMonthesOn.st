tests
testRenderMonthesOn
	self assert: [ :html | calendar renderMonthesOn: html ] generatedIncludesAll: Date monthNames.
	calendar currentDate: (Date year: 2018 month: 6 day: 5).
	self assert: [ :html | calendar renderMonthesOn: html ] generatedIncludes: 'May</div><div class="mdl-cell month-cell active mdl-cell--4-col-desktop"' "June need to be active"