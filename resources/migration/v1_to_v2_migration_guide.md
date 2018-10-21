# Migration guide of Material Design Lite for Seaside V1 to V2

**WORK IN PROGRESS**

The version v2.0.0 of Material Design Lite contains breaking changes. This guide is here to ease the migration of projects to this new version. 

*Note that most of the replacement for removed classes/methods are already present in v1.3.0 to ease the transition.*

## Removal of MDLPaginationWidget

`MDLPaginationWidget` had almost everything duplicated in `MDLSortableTable`. In order to ease the maintenance of this project, the widget is now removed in v2.0.0.

The easiest way to manage paginated tables is now to use a `MDLSortableTable`. Note that v2.0.0 also comes with a new pagination widget that is not table oriented and that is `MDLPaginationComponent`.

You can find example of those widgets in the demo of Material Design Lite for Seaside.

## Renaming of MDLCalendarWidget and MDLCalendarCardWidget

Two renaming happened on the date picker present in MDL widgets in order to use more conventional names. 

- `MDLCalendarWidget` is now named `MDLFlatDatePicker`
- `MDLCalendarCardWidget` is now named `MDLDatePicker`

The behavior of those components is still the same as before.


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

