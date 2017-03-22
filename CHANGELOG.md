# [v1.1.0](https://github.com/DuneSt/MaterialDesignLite/compare/v1.0.2...v1.1.0) (2017-03-22)

## Bug Fixes

* **SelectWidget: Do not upgrade the dom at all node insertion**  ([59c2534](https://github.com/DuneSt/MaterialDesignLite/commit/59c2534))
* **MDLDialog>>openButtonId: missing .close eventListener**  ([262e6f3](https://github.com/DuneSt/MaterialDesignLite/commit/262e6f3))
* **Chips: Use #ensureId rather than overriding #id & #id:**  ([40fcca5](https://github.com/DuneSt/MaterialDesignLite/commit/40fcca5))
* **SortableTable: Visible page might end up out of bounds**  ([b1833e8](https://github.com/DuneSt/MaterialDesignLite/commit/b1833e8))
* **NestedList: Tooltips are unusable**  ([5ef2a08](https://github.com/DuneSt/MaterialDesignLite/commit/5ef2a08))

## Features

* **Anchors as buttons** This add the possibility to have links with the style of buttons to not break semantic ([ba3f0f7](https://github.com/DuneSt/MaterialDesignLite/commit/ba3f0f7))
* **Sliders: New features** This add a label with MD style, possibility to add an icon, possibility to add an output, show the bounds and a demo ([b203a1f](https://github.com/DuneSt/MaterialDesignLite/commit/b203a1f))
* **Dialog: Multiple opening buttons for a dialog**  ([209d49a](https://github.com/DuneSt/MaterialDesignLite/commit/209d49a))
* **SelectWidget: Allow to customize the field**  ([ace3e31](https://github.com/DuneSt/MaterialDesignLite/commit/ace3e31))
* **SelectWidget: Add tooltips on entries**  ([14466d2](https://github.com/DuneSt/MaterialDesignLite/commit/14466d2))
* **SortableTable: Allow to have no pagination**  ([aaa6c19](https://github.com/DuneSt/MaterialDesignLite/commit/aaa6c19))
* **SortableTable: Allow to personalize the style**  ([69284d7](https://github.com/DuneSt/MaterialDesignLite/commit/69284d7))
* **NestedList: Add way to customize style + add some default styles**  ([5f5088c](https://github.com/DuneSt/MaterialDesignLite/commit/5f5088c))
* **NestedList: Ajax actions on clic**  ([feaba43](https://github.com/DuneSt/MaterialDesignLite/commit/feaba43))
* **NestedList: possibility to customize an entry**  ([9421917](https://github.com/DuneSt/MaterialDesignLite/commit/9421917))
* **NestedList: Possibility to have an icon to the right of the list**  ([27fa1fa](https://github.com/DuneSt/MaterialDesignLite/commit/27fa1fa))
* **NestedList: Add a filter**  ([9ecffad](https://github.com/DuneSt/MaterialDesignLite/commit/9ecffad))
* **NestedList: Dynamically load children**  ([5ef2a08](https://github.com/DuneSt/MaterialDesignLite/commit/5ef2a08))
* **NestedList: Search and loading should add a spinner while executing**  ([5ef2a08](https://github.com/DuneSt/MaterialDesignLite/commit/5ef2a08))
* **Tooltip: API should let choose the position of the tooltip**  ([de33e68](https://github.com/DuneSt/MaterialDesignLite/commit/de33e68))

## Cleaning 

* **Dialogs** Clean javascript ([262e6f3]https://github.com/DuneSt/MaterialDesignLite/commit/262e6f3))
* **NestedList** Extract the javascript into a file and use dataset instead of ids ([21c0535](https://github.com/DuneSt/MaterialDesignLite/commit/21c0535))
* **Extract Material Colors in another project** New repositories to get only the MDLColors: [https://github.com/DuneSt/MaterialColors](https://github.com/DuneSt/MaterialColors) ([2efac41](https://github.com/DuneSt/MaterialDesignLite/commit/2efac41))
* **Improve Chips loading scripts**  ([b366ddd](https://github.com/DuneSt/MaterialDesignLite/commit/b366ddd))

## Infrastructure

* **Travis and Appveyor CI** ([1afa628](https://github.com/DuneSt/MaterialDesignLite/commit/1afa628))

## Compatibility

### Squeak

* **`MDColor` has a lowercase class variable**  ([888fb39](https://github.com/DuneSt/MaterialDesignLite/commit/888fb39))

### Gemstone

* **Use string in baseline and remove #asString**  ([868f71b](https://github.com/DuneSt/MaterialDesignLite/commit/868f71b))
