sass
nestedListSass
	^ '@import "variables"

.nestedList
  +box
  background-color: $white

  li > ul
    background-color: $white

  .mdl-tooltip
    white-space: initial

  //Research fild at the top of the list
  .listResearchField
    +box(100%, 46px)
    +displayFlex
    +justify-content(space-around)
    +align-items(center)
    text-align: center

    .mdl-textfield
      position: relative
      padding: 10px 0
      width: calc( 100% - 50px)

    .mdl-textfield__label
      top: 14px

      &:after
        bottom: 10px

  // Customize the spinner next to the research field
  .mdl-spinner
    +box(24px)

  .mdl-spinner__circle
    border-width: 2px


  .listContent.withSearch
    height: calc(100% - 46px)

    .expList
      margin: 0

  .listContent
    height: 100%

    .listContainer
      +box
      overflow: hidden

      &:hover
        overflow: auto

      ul
        padding-left: 0

      a
        +displayFlex
        +align-items(center)
        +flexGrow
        color: rgba(0, 0, 0, 0.87)
        text-decoration: none
        white-space: nowrap
        cursor: pointer
        width: 0

      .expList
        .itemContener
          +displayFlex
          +align-items(center)

          &:hover
            background-color: #EEEEEE

        .itemContener.isSelected
          background-color: #CFD8DC
          position: relative

          &:hover
            background-color: #B0BEC5

        ul, li
          +transition(all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms)
          width: 100%
          line-height: 0


        li .item
          +flexGrow
          vertical-align: middle
          text-overflow: ellipsis
          overflow: hidden


        img
          +box(24px)
          margin: 0 10px

        .expanded
          border-style: solid
          border-width: 1px 0
          border-color: rgb(220,220,220)

          .icon
            background: url( $mdlLibraryURL + ''arrowUp.png'') no-repeat center center

        .collapsed
          ul
            display: none

          .icon
            background: url( $mdlLibraryURL + ''arrowDown.png'') no-repeat center center

        .icon
          +box(40px)
          cursor: pointer

      .expList > li:last-child
        margin-bottom: 60px

.listContainer::-webkit-scrollbar
  display: none

/** STYLES **/

.nestedList.standard
  .listContainer
    a
      font-size: 16px
      font-weight: inherit

    .expList
      li
        .item
          line-height: 48px

.nestedList.compact
  .listContainer
    a
      font-size: 13px
      font-weight: inherit

    .expList
      li
        .item
          line-height: 40px
'