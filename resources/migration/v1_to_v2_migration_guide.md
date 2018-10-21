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

 