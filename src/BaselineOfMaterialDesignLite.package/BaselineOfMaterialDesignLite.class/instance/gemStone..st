baseline
gemStone: spec
  spec
    for: #'gemstone'
    do: [ 
      spec
        package: 'PackageManifest'
          with: [ spec repository: 'http://smalltalkhub.com/mc/pdebruic/PackageManifest/main' ];
        package: 'Ordered-Dictionary'
          with: [ spec repository: 'http://smalltalkhub.com/mc/pdebruic/OrderedDictionary/main' ];
        package: 'Material-Design-Lite-GemStone'
          with: [ spec requires: 'Material-Design-Lite-Components' ];
        package: 'Material-Design-Lite-Extensions'
          with: [ spec requires: #('PackageManifest') ];
        package: 'Material-Design-Lite-Components'
          with: [ spec requires: #('PackageManifest' 'Ordered-Dictionary') ];
        package: 'Material-Design-Lite-Components'
          with: [ spec includes: 'Material-Design-Lite-GemStone' ] ]