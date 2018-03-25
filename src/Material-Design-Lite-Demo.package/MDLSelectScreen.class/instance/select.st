sections
select
	^ OrderedDictionary new
		add: 'Select Widget' -> #renderSelectOn:;
		add: 'Auto submit select' -> #renderAutoSubmitSelectOn:;
		yourself