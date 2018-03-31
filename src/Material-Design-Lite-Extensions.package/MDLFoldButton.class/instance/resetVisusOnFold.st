options
resetVisusOnFold
	self
		onCompleteScript:
			'setTimeout(function(){for(i=0;i<visus.length;i++)visus[i].visu.resize();for(i=0;i<visus.length;i++)visus[i].visu.fit();}, 1000)'