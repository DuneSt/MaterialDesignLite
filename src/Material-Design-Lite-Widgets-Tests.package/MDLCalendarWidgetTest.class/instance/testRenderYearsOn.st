tests
testRenderYearsOn
	self assert: [ :html | calendar renderYearsOn: html ] generatedIncludesAll: (calendar calendar yearsInterval collect: #asString).
	calendar currentDate: (Date year: 2018 month: 6 day: 5).
	self assert: [ :html | calendar renderYearsOn: html ] generatedIncludes: '2017</div><div class="mdl-cell year-cell active mdl-cell--4-col-desktop"' "2018 need to be active"