instance creation
for: aCssId onComplete: aScript
	^ self new
		divId: aCssId;
		onCompleteScript: aScript;
		yourself