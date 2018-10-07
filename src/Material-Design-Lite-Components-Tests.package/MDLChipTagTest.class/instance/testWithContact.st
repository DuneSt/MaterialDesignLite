tests
testWithContact
	self
		assert: [ :html | 
			html
				mdlChip: [ html mdlIcon
						chipIcon;
						with: #accessibility ] ]
		generates:
			'<span class="mdl-chip"><i class="material-icons mdl-chip__contact" id="id1">accessibility</i></span><script type="text/javascript">$("#id1").parent(".mdl-chip").addClass("mdl-chip--contact");</script>'