# [v1.3.3](https://github.com/DuneSt/MaterialDesignLite/compare/v1.3.2...v1.3.3) (2018-12-26)

* Seaside 3.3 compatibility ([86b8a7](https://github.com/DuneSt/MaterialDesignLite/commit/86b8a72676603836342b291a43bc5ce600307c88))

# [v1.3.2](https://github.com/DuneSt/MaterialDesignLite/compare/v1.3.1...v1.3.2) (2018-11-22)

* Loads another seaside group for Squeak ([0d6ffd8](https://github.com/DuneSt/MaterialDesignLite/commit/0d6ffd8fe7830ec0cc27e4a1a028f3fd626fd9de))

# [v1.3.1](https://github.com/DuneSt/MaterialDesignLite/compare/v1.3.0...v1.3.1) (2018-10-18)

* This release brings a lot of deprecation in prevision of the next major release.

# [v1.3.0](https://github.com/DuneSt/MaterialDesignLite/compare/v1.2.0...v1.3.0) (2018-10-07)

## Features

* **Add compatibility for Gemstone smalltalk** ([b83d742](https://github.com/DuneSt/MaterialDesignLite/commit/b83d742ebd2472efac31fa140df60cecc4c7eac1)) and ([622dbdb](https://github.com/DuneSt/MaterialDesignLite/commit/622dbdbaf55476826baf84aebbc85eb07f4ae2cd))
* **MDLCell should implement an offset feature** ([0ae17ef](https://github.com/DuneSt/MaterialDesignLite/commit/0ae17ef7781c0891958ba6b26223ab55110a09cc))
* **MDLCell should allow to rorder the cells depending on the layout (desktop/tablet/phone)** ([a8e77dd](https://github.com/DuneSt/MaterialDesignLite/commit/a8e77dd68e8f82e36a12b334fbd7a0a81d04924b))

## Gemstone

* **Add OrderedDictionary to Gemstone compatibility package** ([b83d742](https://github.com/DuneSt/MaterialDesignLite/commit/b83d742ebd2472efac31fa140df60cecc4c7eac1))
* **GemStone expects Blocks for ifNotNil: and friends. What does this code do?** ([b83d742](https://github.com/DuneSt/MaterialDesignLite/commit/b83d742ebd2472efac31fa140df60cecc4c7eac1))

## Bug Fixes

* **Closing button of MDLDialogWidget should not be of submit type but of button type** ([9d54da1](https://github.com/DuneSt/MaterialDesignLite/commit/9d54da1136fe2f46d03fe2191c7fa2e7c7b7d37e))
* **MDLMenuButtonWidget should use the ID system of MDLWidget** ([8ad61b9](https://github.com/DuneSt/MaterialDesignLite/commit/8ad61b988dfe116d082c9fef829083f1b9d6c9a0))
* **MDLCalendar should use the id system of MDLWidget instead of recreating one** ([01e1f61](https://github.com/DuneSt/MaterialDesignLite/commit/01e1f61d3fac2f529131ba8957c7425b249818fc))
* **Month and year selection does not work on MDLCalendarWidget** ([dc915cd](https://github.com/DuneSt/MaterialDesignLite/commit/dc915cd522c4ee66c88d0c566282d230a738fa4c))
* **First snackbar demo is broken** ([9497c65](https://github.com/DuneSt/MaterialDesignLite/commit/9497c65bf111cff63d45ebb2bbd399f50be7c4c2))

## Cleaning

* **Deprecate #mdlMultilineTextField since we already have #mdlTextArea which is the common name in HTML5** ([ef1e0a6](https://github.com/DuneSt/MaterialDesignLite/commit/ef1e0a6acf0968ac8d4f02e4dd86daad57f66008))
* **Deprecate MDLCheckboxWidget since it does not brings anything more than the brushes** ([0630493](https://github.com/DuneSt/MaterialDesignLite/commit/0630493baa6c322a8916bfe29769c0ad17b3a568))
* **Typo in MDLProgressBarWidget, #hyde should be #hide** ([a362b33](https://github.com/DuneSt/MaterialDesignLite/commit/a362b3316ba6a140966bf9b51b6904725c610c6d))
* **Remove dependency to Morphic (#detectIndex:)** ([ab02a1f](https://github.com/DuneSt/MaterialDesignLite/commit/ab02a1ff1a0883008c0596de464ec8ea3f644856))
* **MDLCardTitleText should not be able to respond to #borde or #expand** ([7f2e2cf](https://github.com/DuneSt/MaterialDesignLite/commit/7f2e2cf043962c2b3b0c99703a332b672a780d72))
* **Remove dependency to JQueryUI** ([9ed3a6f](https://github.com/DuneSt/MaterialDesignLite/commit/9ed3a6f20455a09bee1ea69171dc6d42ff5c8c41))
* **Remove duplication between MDLButton and MDLAnchorButton** ([99b3266](https://github.com/DuneSt/MaterialDesignLite/commit/99b3266b4f123f28478720c44bf865802cddb506))
* **MDLCardTag has unused variables** ([431d7d1](https://github.com/DuneSt/MaterialDesignLite/commit/431d7d1cc132636c0df7852d0eaa842606e3b215))
* **MDLCardMenu should not be able to respond to #borde or #expand** ([b59094d](https://github.com/DuneSt/MaterialDesignLite/commit/b59094d1f0ca9302653f9c6f05a420aae7df357e))
* **Remove dependency to Seaside-Development** ([89fa553](https://github.com/DuneSt/MaterialDesignLite/commit/89fa553e6c5cf32e73ddf0caad581bee27a630cf))
* **Deprecate useless MDLFooterLogo since we already have MDLLogo** ([fa7d7985](https://github.com/DuneSt/MaterialDesignLite/commit/fa7d7985269880ed5577c1efb25d783721d0d2e0))
* **Remove duplication between MDLIconToggleLabel and MDLIcon>>#toggle** ([fa7d798](https://github.com/DuneSt/MaterialDesignLite/commit/fa7d7985269880ed5577c1efb25d783721d0d2e0))

## Infrastructure

* **Improve code coverage.** This release increased the code coverage from 3% to 61%
* **Add tests.** The number of tests increased from 8 to 485
* **Add Coverall to CI** ([5a37a85](https://github.com/DuneSt/MaterialDesignLite/commit/5a37a85b4dd6c6aa2032f1abe59d38708831db13))
* **Add Demo about not raised colored buttons** ([7a55891](https://github.com/DuneSt/MaterialDesignLite/commit/7a55891b30ab23c37793a99b441617618ad19afb))

## Demo

* **Add demo on Elevation** ([f9a387c](https://github.com/DuneSt/MaterialDesignLite/commit/f9a387c3fb51db402ae7fccda8f57ef9df651c32))
* **UX: ** Icons in list should be clickable ([43e3187](https://github.com/DuneSt/MaterialDesignLite/commit/43e3187ae5624f4c6fae0a27dd4016d0c230d80f))
* **UX: ** Improve global UX of the demo ([43e3187](https://github.com/DuneSt/MaterialDesignLite/commit/43e3187ae5624f4c6fae0a27dd4016d0c230d80f))
* **Add demo about MDLBadge>>noBackaground** ([f097d8f](https://github.com/DuneSt/MaterialDesignLite/commit/f097d8f49f0bdd8dfc28751d3e80d3d4dfb1bf77))
* **Add demo to explicit MDLBadge>>overlap option** ([f097d8f](https://github.com/DuneSt/MaterialDesignLite/commit/f097d8f49f0bdd8dfc28751d3e80d3d4dfb1bf77))
* **Add demo about MDLCell>>#hideDesktop/#hideTablet/#hidePhone** ([aabc92b](https://github.com/DuneSt/MaterialDesignLite/commit/aabc92b5d644e683d718dbf929fa52689b6c3fc5))
* **Add demo about MDLCell>>#stretch/#bottom/#top/#middle** ([250a4b2](https://github.com/DuneSt/MaterialDesignLite/commit/250a4b2d7d3a1eda522f5bb80bf15bf4d93c1a70))

# [v1.2.0](https://github.com/DuneSt/MaterialDesignLite/compare/v1.1.0...v1.2.0) (2018-03-31)

## Features

* **Add an extension to create resizable left panels to the application** ([2a8da98](https://github.com/DuneSt/MaterialDesignLite/commit/2a8da986db0d7fc47107b563b3546d5a57f84e50))
* **Add an extension to ease the use of dialogs: the Root Dialog** ([3d4d18e](https://github.com/DuneSt/MaterialDesignLite/commit/3d4d18eb9015bd2e28d12123545c13b71f11a95a))
* **Add an extension to create a right resizable panel with tabs** ([2a8da98](https://github.com/DuneSt/MaterialDesignLite/commit/2a8da986db0d7fc47107b563b3546d5a57f84e50))
* **Implement a Progress bar widget to update the progress bar via some server calls** ([2fe79aa](https://github.com/DuneSt/MaterialDesignLite/commit/2fe79aae08dd73e48a82caf707984fb42ccab6da))
* **Add premade typographies**. Comes with a demo ([0c29dca](https://github.com/DuneSt/MaterialDesignLite/commit/0c29dcab373948c5a510d3d632950f2297ec789c))
* **Implement methods to use the primary and accent color with text and backgrounds**. Comes with a demo ([e39667d](https://github.com/DuneSt/MaterialDesignLite/commit/e39667dd625b2689f3c9a290df26c911cc91fd7a))
* **MDLSelectWidget>>customizationBlock should take the canvas as second parameter** ([f4ad7c9](https://github.com/DuneSt/MaterialDesignLite/commit/f4ad7c98b2276b0412c1e4bc4cb8d215c8929503))
* **Chips: Highlight lightly the background of the icons** ([639f105](https://github.com/DuneSt/MaterialDesignLite/commit/639f10597a851810040c7fc4680a42fa1df85488))
* **Missing beCurrent on MDLNavigationLink** ([488da0c](https://github.com/DuneSt/MaterialDesignLite/commit/488da0cda00eda5941abae829bcaf7a78169a581))
* **Simplify the creation of icon button** ([9b88f32](https://github.com/DuneSt/MaterialDesignLite/commit/9b88f322ceca2d94b7f4bf0b348b913ecaaa663e))
* **Add sugar to MDLButton to create a label icon button** ([a49797b](https://github.com/DuneSt/MaterialDesignLite/commit/a49797b230f5caca7aea11fa5f3cdb548c7f1277))
* **MDLMenuButtonWidget should allow custom content in the button** ([46281d2](https://github.com/DuneSt/MaterialDesignLite/commit/46281d20536da8e84b3002eaecc71dd7f48decc2))
* **Add MDLGrid>>noSpacing option** ([d4ea697](https://github.com/DuneSt/MaterialDesignLite/commit/d4ea6979266070cb6ece5bc36dc4634815a38dc6))
* **Add MDLTabsTabBar>>rippleEffect** ([a92f72d](https://github.com/DuneSt/MaterialDesignLite/commit/a92f72dabbde7f5034ee23e6dc668488948fd6d3))
* **Add MDLLayoutTabBar>>rippleEffect** ([a92f72d](https://github.com/DuneSt/MaterialDesignLite/commit/a92f72dabbde7f5034ee23e6dc668488948fd6d3))
* **Add MDLLayoutTab>>isActiveIf: conveniance method** ([04d0c55](https://github.com/DuneSt/MaterialDesignLite/commit/04d0c55f2883a05c23b8880e1b31cbccf93316a4))
* **Add MDLLayoutTabPanel>>isActiveIf: conveniance method** ([a92f72d](https://github.com/DuneSt/MaterialDesignLite/commit/a92f72dabbde7f5034ee23e6dc668488948fd6d3))
* **MDLCardWidget: Add the possibility to have a header with the application's primary or accent color** ([986de88](https://github.com/DuneSt/MaterialDesignLite/commit/986de88a42040bac076006f1cf015e503ae86f8b))
* **NestedList: Add an option to sort children** ([bbf1572](https://github.com/DuneSt/MaterialDesignLite/commit/bbf157209291a15437d7449fbc1366c4f2e8ef31))
* **NestedList: Add case sensitive and insensitive substring filters** ([0680006](https://github.com/DuneSt/MaterialDesignLite/commit/0680006d965401fd424ce7809615c8891c412dae))

## Bug Fixes

* **MDLMenuButtonWidget: We should be able to use MDLMenuButtonWidget without textBlock** ([d6dcf0a](https://github.com/DuneSt/MaterialDesignLite/commit/d6dcf0afefacefc94c0154db2eddbd9479860df1))
* **NestedList: Scroll to the highest selected object if it is present multiple time in the list** ([b17ce67](https://github.com/DuneSt/MaterialDesignLite/commit/b17ce67995f6334835fdf24c3f60e9205c3024d9))
* **Chips should have a user-select: none property**. This make the text contained in the chip not selectable ([abfca7c](https://github.com/DuneSt/MaterialDesignLite/commit/abfca7c19204e032f528406e2bc35248f2178652))
* **NestedList have useless CSS making it harder to use** ([3898d38](https://github.com/DuneSt/MaterialDesignLite/commit/3898d3884fd4a241a0032c9e8bf2d9cd553a3062))
* **MDLCalendar: Clicking on a day in the callendar does not launch the callback** ([538e9c4](https://github.com/DuneSt/MaterialDesignLite/commit/538e9c4da267b60ad6f28d2ef4ea9c1d50ae8375))
* **MDLMenuButtonWidget button should not allow wrap inside the button by default** ([5005a19](https://github.com/DuneSt/MaterialDesignLite/commit/5005a19ac46a0853e34c1c8eb054152f67e5f5a5))
* **MDLAnchorButton is not well displayed with the 'fab' option** ([8c6360a](https://github.com/DuneSt/MaterialDesignLite/commit/8c6360aa39dc88f437c440f86f1c40f3127d7af1))
* **NestedList filtering should launch the #onLoadHook after displaying the result** ([40cf46e](https://github.com/DuneSt/MaterialDesignLite/commit/40cf46ebae34db3dd8be0f145e9c05f9c6a2df47))
* **MDLCalendar: Card calendar hard code colors instead of using primary color** ([226f62a](https://github.com/DuneSt/MaterialDesignLite/commit/226f62a564824a72e2843b7f450f3b23b6e33316))
* **NestedList: It is hard to click on elements with short names in nested list** ([478ef33](https://github.com/DuneSt/MaterialDesignLite/commit/478ef33a36e98772082cc4bc21dcdec41fec1b68))

## Performances

* **NestedList: Performances can be improved when there is multiple time the same children nested in the list** ([bbf1572](https://github.com/DuneSt/MaterialDesignLite/commit/bbf157209291a15437d7449fbc1366c4f2e8ef31))

## Cleaning 

* **Do not upgrade to lastest Metacello by default, only use Cypress support if it is already present in the image** ([1817aa6](https://github.com/DuneSt/MaterialDesignLite/commit/1817aa6594b1fb4728cc9f2b5ff8d501cb117c5a) and [b1e8258](https://github.com/DuneSt/MaterialDesignLite/commit/b1e82581a8ba90bdd57ddc00ae029ec9317b5bcb#diff-f5dfde7e275c2a4949b26c617ec6bb15))
* **Baseline cleanup** ([5f56f8b](https://github.com/DuneSt/MaterialDesignLite/commit/5f56f8b546db4275107609c4c3cb7495a0e7bc88))
* **Move FileLibrary to its own package** ([e40ef39](https://github.com/DuneSt/MaterialDesignLite/commit/e40ef3937da60e935ca8471ebdf40b9b090526a1))
* **Move methods extensions from Material-Design-Lite-Core to Material-Design-lite-Components because Core is not essential** ([4668742](https://github.com/DuneSt/MaterialDesignLite/commit/466874239ee0ab69bfef3104e9c775fdc03491e7))
* **MDLSelectWidget should have an API closer to Seaside's select input** ([fd2910d](https://github.com/DuneSt/MaterialDesignLite/commit/fd2910dd28bd5bfa4f48cf8342933c3c2968b170))
* **Tag README's code snippets as Smalltalk to get syntax highlighting** ([f2e95c3](https://github.com/DuneSt/MaterialDesignLite/commit/f2e95c3b6fb48085ed0be07579cb1da93dbbd75f))
* **Add more class documentation**
* **Document all packages** ([a3045d7](https://github.com/DuneSt/MaterialDesignLite/commit/a3045d7e8e36d7b2bb34c5e42b309e7bd48810ed))

## Infrastructure

* **Move to github's seaside repository instead of the SmalltalkHub one** ([4a357a6](https://github.com/DuneSt/MaterialDesignLite/commit/4a357a6258ad9dff1d4d712f5f8ad3d332fa504d#diff-7080a63bcb9fb44414421f7eb51b11b3))
* **Move the CSS to SASS** ([7176646](https://github.com/DuneSt/MaterialDesignLite/commit/717664681b55de93e9ad9cc4de5d44207f954e91))
* **Add branch and version management description de README.md and CONTRIBUTING.md** ([ba968ba](https://github.com/DuneSt/MaterialDesignLite/commit/ba968ba4cce766df6d24f8e960e6f262feb26816))
* **Add Pharo versions supported in the Readme** ([09072f8](https://github.com/DuneSt/MaterialDesignLite/commit/09072f8973c9b18af439de25cfba9be95001575b))
* **Fix version of dependencies to not use master but semantic versioning** ([7c34bf3](https://github.com/DuneSt/MaterialDesignLite/commit/7c34bf32b528d9170c8811e553ff552abfe1d59f))

## Demo

* A lot of examples were added thourgh different commits
* **Creation on a new demo named MDLDemo**
* **New deployed demo at: [https://mdl.ferlicot.me/](https://mdl.ferlicot.me/)**
* **Demo has a link to the Smalltalkhub repository instead of github one** ([0902637](https://github.com/DuneSt/MaterialDesignLite/commit/0902637d8bf8f80bfa97d2a079dda5f4b34aa386))
* **Display MaterialDesign version in the Demo** ([0902637](https://github.com/DuneSt/MaterialDesignLite/commit/0902637d8bf8f80bfa97d2a079dda5f4b34aa386))
* **Demo checkbox should use the group to show real checkboxes examples** ([866f2cf](https://github.com/DuneSt/MaterialDesignLite/commit/866f2cf82353b98de33e0b94dc11f5f34263008a))
* **Do not duplicates code in examples** ([5dda7ae](https://github.com/DuneSt/MaterialDesignLite/commit/5dda7ae9b563ff1f5319b9d86e6396879c8a2bc2))
* **Menu demo: code displayed is not right** ([5dda7ae](https://github.com/DuneSt/MaterialDesignLite/commit/5dda7ae9b563ff1f5319b9d86e6396879c8a2bc2))
* **Copy examples on click** ([2d05f9c](https://github.com/DuneSt/MaterialDesignLite/commit/2d05f9ca21f27a1c76b63ceebcc7520944254ab4))
* **Add an index and a getting started page** ([2a0228a](https://github.com/DuneSt/MaterialDesignLite/commit/2a0228a85a0d5ccdaca43b1add7ce2c61d487318))

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

* **Dialogs** Clean javascript ([262e6f3](https://github.com/DuneSt/MaterialDesignLite/commit/262e6f3))
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
