# Migration guide of Material Design Lite for Seaside V1 to V2

The version v2.0.0 of Material Design Lite contains breaking changes. This guide is here to ease the migration of projects to this new version. 

> Note that most of the replacement for removed classes/methods are already present in v1.3.0 to ease the transition.

One of the main change is that v2.0.0 is now in **Tonel** format instead of **FileTree**. This means that support for Gemstone stops at v1 until Tonel is working out of the box in Gemstone.

> Note that does not mean we cannot do anymore bugfix or add new features for Gemstone. In case someone using Gemstone needs a new feature or bugfix, we can create a new minor or patch version to the version 1 even after the v2 release. Just open an issue explaining your need. What will not happen is an automatic backport of all new features to v1.

Be also careful, a new installation step is needed to fully exploit all feature of the v2. [See here](https://github.com/DuneSt/MaterialDesignLite#add-specific-style-for-extensions).

- [Migration guide of Material Design Lite for Seaside V1 to V2](#migration-guide-of-material-design-lite-for-seaside-v1-to-v2)
  * [Removal of the `color` group](#removal-of-the-color-group)
  * [Removal of MDLPaginationWidget](#removal-of-mdlpaginationwidget)
  * [Renaming of MDLCalendarWidget and MDLCalendarCardWidget](#renaming-of-mdlcalendarwidget-and-mdlcalendarcardwidget)
  * [MDLTableCell and MDLTableCellHeading are now numerical by default](#mdltablecell-and-mdltablecellheading-are-now-numerical-by-default)
  * [WATagBrush>>#mdlCardTitle is now named #mdlCardTitleContainer](#watagbrush-mdlcardtitle-is-now-named-mdlcardtitlecontainer)
  * [MDLMenuItem>>disable is now removed](#mdlmenuitem-disable-is-now-removed)
  * [MDLGridSection is now removed](#mdlgridsection-is-now-removed)
  * [MDLApplication>>applicationName is now removed](#mdlapplication--applicationname-is-now-removed)
  * [MDLFooterLogo is now removed](#mdlfooterlogo-is-now-removed)
  * [Removal of MDLCheckboxWidget](#removal-of-mdlcheckboxwidget)
  * [Removal of MDLIconToggleLabel](#removal-of-mdlicontogglelabel)
  * [Removal of MDLMultilineTextField](#removal-of-mdlmultilinetextfield)
  * [Cleaning of MDLCardWidget API](#cleaning-of-mdlcardwidget-api)
  * [MDLSelectWidget>>defaultSorting is now removed](#mdlselectwidget--defaultsorting-is-now-removed)
  * [MDLNavigationLinkWithIconComponent>>icon: is removed](#mdlnavigationlinkwithiconcomponent--icon--is-removed)
  * [MDLProgressBar API cleaning](#mdlprogressbar-api-cleaning)
  * [MDLSortableTable now uses ajax when we change the number of elements to display by pages](#mdlsortabletable-now-uses-ajax-when-we-change-the-number-of-elements-to-display-by-pages)
  * [Changes on the handling of properties in HighLevelWidgets](#changes-on-the-handling-of-properties-in-highlevelwidgets)


## Removal of the `color` group

The color management in MDL was extracted to the project [MaterialColors](https://github.com/DuneSt/MaterialColors) during v1. The `color` group in the baseline was still present and pointed to this new project. 

In the v2 this group was removed. You can replace it by an actual reference to MaterialColor project:

```Smalltalk
    spec
    	baseline: 'MaterialColors'
    	with: [ spec repository: 'github://DuneSt/MaterialColors:v2.x.x/src' ]
```

## Removal of MDLPaginationWidget

`MDLPaginationWidget` had almost everything duplicated in `MDLSortableTable`. In order to ease the maintenance of this project, the widget is now removed in v2.0.0.

The easiest way to manage paginated tables is now to use a `MDLSortableTable`. Note that v2.0.0 also comes with a new pagination widget that is not table oriented and that is `MDLPaginationComponent`.

You can find example of those widgets in the demo of Material Design Lite for Seaside.

## Renaming of MDLCalendarWidget and MDLCalendarCardWidget

Two renaming happened on the date picker present in MDL widgets in order to use more conventional names. 

- `MDLCalendarWidget` is now named `MDLFlatDatePicker`
- `MDLCalendarCardWidget` is now named `MDLDatePicker`

The behavior of those components is still the same as before.

## MDLTableCell and MDLTableCellHeading are now numerical by default

In the version on of MDL for Seaside, the mdl cells and mdl table cells were non-numerical by default. Because of this we needed to use basic html cells for numerical ones. 

Now cells are numerical by default and there is an option `#nonNumerical` that can be used. 

This snippet from v1.x.x:

```Smalltalk
html
	mdlTable: [ html
		tableHead: [ html
			tableRow: [ html mdlTableHeading: 'Material'.
			html tableHeading: 'Quantity'.
			html tableHeading: 'Price' ] ].
	html
		tableBody: [ html
			tableRow: [ html mdlTableCell: 'Acrylic (Transparent)'.
			html tableData: '25'.
			html tableData: '$2.90' ] ] ]
``` 

Should now be:


```Smalltalk
html
	mdlTable: [ html
		tableHead: [ html
			tableRow: [ html mdlTableHeading
				nonNumerical;
				with: 'Material'.
			html mdlTableHeading: 'Quantity'.
			html mdlTableHeading: 'Price' ] ].
	html
		tableBody: [ html
			tableRow: [ html mdlTableCell
				nonNumerical;
				with: 'Acrylic (Transparent)'.
			html mdlTableCell: '25'.
			html mdlTableCell: '$2.90' ] ] ]
``` 



## WATagBrush>>#mdlCardTitle is now named #mdlCardTitleContainer

Two methods around the MDL card titles were renamed to be coherent with the naming convention of MDL.

- `WATagBrush>>#mdlCardTitle` is now `WATagBrush>>#mdlCardTitleContainer`
- `WATagBrush>>#mdlCardTitle:` is now `WATagBrush>>#mdlCardTitleContainer:`

## MDLMenuItem>>disable is now removed

The method `MDLMenuItem>>disable` is now removed. You can use the method `disabled` that is more coherent with Seaside API.

## MDLGridSection is now removed

`MDLGridSection` is now removed from MDL for Seaside. To replace it you can directly call the method `beGrid` on a section brush.
 
## MDLApplication>>applicationName is now removed

It was possible before to set a variabel `#applicationName` in a MDLApplication. But this name was used nowhere in the abstract class. It is now removed. If you wish to get this variable in your application you can just create a new variable in you subclass.

## MDLFooterLogo is now removed

The class `MDLFooterLogo` is now removed since it is a duplication of `MDLLogo`. This change should not impact the users since they should use brushes instead of referencing the class directly.

## Removal of MDLCheckboxWidget

`MDLCheckboxWidget` was an attempt to make the usage of checkboxes easier with MDL for Seaside. In the end it was not simpler than using brushes directly and was missing features. 

Is it now removed in favor of direct use of checkbox brushes as shown in the demo.

## Removal of MDLIconToggleLabel

The class `MDLIconToggleLabel` is now removed. It can be replace by the usage of a `MDLIcon` with the `toggle` option. 

## Removal of MDLMultilineTextField

The class `MDLMultilineTextField` is now removed. It can be replaced by `MDLTextArea` that is the equivalent with a name closer to HTML5 standard.

## Cleaning of MDLCardWidget API

Some methods are now renamed in `MDLCardWidget` :
- `addTitle:level:` is now `title:level:`
- `addTitle:level:class:` is now `title:level:class:`

## MDLSelectWidget>>defaultSorting is now removed

`MDLSelectWidget>>defaultSorting` is now removed in favor of `standardSorting`.

## MDLNavigationLinkWithIconComponent>>icon: is removed

`MDLNavigationLinkWithIconComponent>>icon:` is removed in favor of `iconURL:`.

## MDLProgressBar API cleaning

In the MDLProgressBar some methods were renamed:
- `hyde` to `hide`
- `hyde:` to `'hide:`

## MDLSortableTable now uses ajax when we change the number of elements to display by pages

This changes the behavior and the look of the widget. There is no replacement to get the old behavior in the v2. If you explicitly need the old behavior, please contact us throught the issues.

## Changes on the handling of properties in HighLevelWidgets

The subclasses of `MDLHighLevelWidget` have a way to customize the main brush of the widget throught properties. 

You could for example declare: 

```Smalltalk
aCardWidget propertiesAt: #shadow: put: 24
```

This meaned that the method #shadow: will be called on the main brush of the card widget with 24 as parameter.

The problem with the feature was that depending on widgets, the argument needed to be an argument or a collection of arguments. This caused problem when we wanted to have a collection as argument. 

The system was reviewed in v2 to make mandatory the use of an array of arguments as second argument of #propertiesAt:put:.

The previous code now needs to be updated to

```Smalltalk
aCardWidget propertiesAt: #shadow: put: (Array with: 24)
```

  
