as yet unclassified
loadOnGemStone
  "

eval `BaselineOfMaterialDesignLite loadOnGemStone`

"

  GsDeployer
    deploy: [ 
      Metacello new
        repository: 'filetree:///opt/git/MaterialDesignLite/src';
        baseline: 'MaterialDesignLite';
        onConflict: [ :ex | ex allow ];
        onLock: [ :ex | ex honor ];
        load ]