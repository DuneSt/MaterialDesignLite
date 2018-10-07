# MaterialDesignLite for Seaside <img src="https://raw.githubusercontent.com/DuneSt/MaterialDesignLite/development/resources/logos/logoFull.png" width="50">

#### Linux/OSX builds
Master: [![Build Status](https://travis-ci.org/DuneSt/MaterialDesignLite.svg?branch=master)](https://travis-ci.org/DuneSt/MaterialDesignLite)| Development: [![Build Status](https://travis-ci.org/DuneSt/MaterialDesignLite.svg?branch=development)](https://travis-ci.org/DuneSt/MaterialDesignLite)

#### Windows builds
Master: [![Build status](https://ci.appveyor.com/api/projects/status/1d20eiwk92jpgfni/branch/master?svg=true)](https://ci.appveyor.com/project/jecisc/materialdesignlite/branch/master) | Latest commit: [![Build status](https://ci.appveyor.com/api/projects/status/1d20eiwk92jpgfni?svg=true)](https://ci.appveyor.com/project/jecisc/materialdesignlite)

Coverage:

[![Coverage Status](https://coveralls.io/repos/github/DuneSt/MaterialDesignLite/badge.svg)](https://coveralls.io/github/DuneSt/MaterialDesignLite)

This project has as first goal to bind the Google's Material Design Lite project to Seaside and as second goal to build widgets on top of Material Design to help [Seaside](https://github.com/SeasideSt/Seaside) developers in creating fast web application with flat design. For a tutorial on Seaside check [http://book.seaside.st](http://book.seaside.st).

- [Documentation](#documentation)
  * [Version management](#version-management)
  * [Install MDL Seaside](#install-mdl-seaside)
  * [Getting started](#getting-started)
    + [Add the right libraries and file](#add-the-right-libraries-and-file)
      - [Add the css file in the updateRoot of your application:](#add-the-css-file-in-the-updateroot-of-your-application-)
    + [Subclassing MDLApplication](#subclassing-mdlapplication)
  * [Examples](#examples)
  * [ZnWorkspace](#znworkspace)
  * [Latest supported Dependencies](#latest-supported-dependencies)
  * [Smalltalk versions compatibility](#smalltalk-versions-compatibility)
  * [Under the hood](#under-the-hood)
  * [Contact](#contact)

# Documentation

## Version management 

This project use semantic versionning to define the releases. This mean that each stable release of the project will get associate a version number of the form `vX.Y.Z`. 

- **X** define the major version number
- **Y** define the minor version number 
- **Z** define the patch version number

When a release contains only bug fixes, the patch number increase. When the release contains new features backward compatibles, the minor version increase. When the release contains breaking changes, the major version increase. 

Thus, it should be safe to depend on a fixed major version and moving minor version of this project.

## Install MDL Seaside

To install MaterialDesignLite on your Pharo image you can just execute the following script:  [Spotter Cloud Workspace Url](http://ws.stfx.eu/1JIZRQS7OI00). See ``ZnWorkspace`` section for installing a ZnWorkspace if you so want.

```Smalltalk
    Metacello new
    	githubUser: 'DuneSt' project: 'MaterialDesignLite' commitish: 'master' path: 'src';
    	baseline: 'MaterialDesignLite';
    	onWarningLog;
    	load
```

To add MaterialDesignLite Seaside to your baseline just add this:

```Smalltalk
    spec
    	baseline: 'MaterialDesignLite'
    	with: [ spec repository: 'github://DuneSt/MaterialDesignLite:master/src' ]
```

Note that you can replace the #master by another branch as #development or a tag as #v1.0.0, #v1.? or #v1.2.? .

## Getting started

We use as a base the files product by Google's Material Design Lite. To have a working Material Design Seaside application we need to add those files.
Most of them can be easily added via a file library but one file need to be explicitely added because this file change depending on the colors you wish for your application.

For now MDL Seaside is based on version 1.3.0 of Google's Material Design Lite.

### Add the right libraries and file

To use MaterialDesign you will need to add JQuery and Material Design library to your application:

```Smalltalk
	(WAAdmin register: self asApplicationAt: 'myApplication')
		addLibrary: JQDeploymentLibrary;
		addLibrary: MDLLibrary
```

Then you will need to add the css file with the colors. To do so, you will have two options:
 * Add it to your file library
 * Add it in your #updateRoot:

You can find the files on [https://getmdl.io/customize/index.html](https://getmdl.io/customize/index.html)

They are in the form of: https://storage.googleapis.com/code.getmdl.io/1.3.0/material.XXX-YYY.min.css

Where 	    
 * XXX = primary color
 * YYY = accent color

#### Add the css file in the updateRoot of your application:

```Smalltalk
    MyApplication>>updateRoot: anHtmlRoot
	    super updateRoot: anHtmlRoot.
	    anHtmlRoot beHtml5.
	    anHtmlRoot stylesheet url: (WAUrl absolute: 'https://storage.googleapis.com/code.getmdl.io/1.3.0/material.XXX-YYY.min.css').
```

### Subclassing MDLApplication

Another simple way to start with MDL is to subclass MDLApplication to create your root component.
MDLApplication is a class to help you to start an application easily. It will keep in a FileLibrary most of MDL's files.

Since MaterialDesignLite works with a primary color and an accent color you will need to set them. To do so you will need to add this to your #initialize method:

```Smalltalk
    self primaryColor: MDLColor indigo secondaryColor: MDLColor pink
```

You can find the possible colors into the class MDLColor class.

## Examples

You can find multiple examples when the application will be installed at the url: [http://localhost:8080/MDLDemo](http://localhost:8080/MDLDemo)

When you install in a plain Pharo image you need to start the seaside server first by opening `World menu > Tools > Seaside Control Panel` and adding and starting an appropropriate `ZnZincServerAdaptor`. If you do not use port 8080, change the port in the URL.

You can find a demo at: [https://mdl.ferlicot.fr/](https://mdl.ferlicot.fr/)

## ZnWorkspace

If you look at a cloud workspace page, you'll see it mentions a `ZnWorkspace`. This is how you can load it up.

```Smalltalk
Gofer it
  squeaksource: 'ZincHTTPComponents';
  package: 'Zinc-WWS-Client';
  load.
```

To open one, just do a
```Smalltalk
ZnWorkspace openUrl: 'http://ws.stfx.eu/1JIZRQS7OI00'
```

## Latest supported Dependencies

- [Material Icons v3.0.1](https://github.com/google/material-design-icons/releases/tag/3.0.1)
- [Material Design Lite v1.3.0](https://github.com/google/material-design-lite/releases/tag/v1.3.0)

## Smalltalk versions compatibility

| MDL version 	| Compatible Pharo versions 	| Compatible Gemstone versions 	|
|-------------	|---------------------------	|---------------------------	|
| 1.1.x       	| Pharo 50, 60, 61				| None							|
| 1.2.x       	| Pharo 50, 60, 61				| None							|
| 1.3.x       	| Pharo 50, 60, 61				| Gemstone 3.4.1 (*) (**)		|
| Dev       	| Pharo 50, 60, 61				| Gemstone 3.4.1 (*) (**)		|

(*) *This version of Gemstone is tested. Older versions might work but we did not tested it.*
(**) *The compatibility is not total. MaterialDesignLite uses Pharo's Traits to provide the users composables components. Thus, if the Gemstone users wants to use those components they will have to flatten themself the Traits in their Seaside application*

## Under the hood

Understanding what is going on under the hood is always useful. Have a look at (http://www.tutorialspark.com/Google_MaterialDesignLite_Tutorials/index.php) for a tutorial.

## Contact

If you have any question or problem do not hesitate to open an issue or contact cyril (a) ferlicot.me 