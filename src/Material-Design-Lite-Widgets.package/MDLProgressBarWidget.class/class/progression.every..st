instance creation
progression: aProgressionBlock every: aDuration
	^ self new
		progressionBlock: aProgressionBlock;
		refreshTime: aDuration;
		yourself