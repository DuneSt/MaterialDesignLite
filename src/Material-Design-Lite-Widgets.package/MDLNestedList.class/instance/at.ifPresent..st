private
at: anInteger ifPresent: aBlockClosure 
	aBlockClosure value: (self filteredElements at: anInteger)