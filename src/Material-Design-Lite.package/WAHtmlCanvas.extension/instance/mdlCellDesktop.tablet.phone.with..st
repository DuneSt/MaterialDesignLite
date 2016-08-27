*Material-Design-Lite
mdlCellDesktop:  dsize tablet: tsize phone: psize with: aBlock
	^ self mdlCell
		desktopSize: dsize;
		tabletSize: tsize;
		phoneSize: psize;
		with: aBlock;
		yourself