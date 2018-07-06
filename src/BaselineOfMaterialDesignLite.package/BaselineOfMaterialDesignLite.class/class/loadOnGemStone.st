loading
loadOnGemStone
	"

eval `BaselineOfMaterialDesignLite loadOnGemStone`

"

	<script>
	(Smalltalk hasClassNamed: 'GsDeployer')
		ifTrue: [ (Smalltalk classNamed: 'GsDeployer')
				perform: #deploy:
				with: [ Metacello new
						repository: 'filetree:///opt/git/MaterialDesignLite/src';
						baseline: 'MaterialDesignLite';
						onConflict: [ :ex | ex allow ];
						onLock: [ :ex | ex honor ];
						load ] ]