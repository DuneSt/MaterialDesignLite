uploaded
myStyleCss
	^ '
.hljs {
  display: block;
  overflow-x: auto;
  padding: 0.5em;
  color: #333;
}

.hljs-comment,
.hljs-quote {
  color: #998;
  font-style: italic;
}

.hljs-keyword,
.hljs-selector-tag,
.hljs-subst {
  color: #00a;
}

.hljs-number,
.hljs-literal,
.hljs-variable,
.hljs-template-variable,
.hljs-tag .hljs-attr {
  color: #800000;
}

.hljs-string,
.hljs-doctag {
  color: #800080;
}

.hljs-title,
.hljs-section,
.hljs-selector-id {
  color: #900;
  font-weight: bold;
}

.hljs-subst {
  font-weight: normal;
}

.hljs-type,
.hljs-class .hljs-title {
  color: #458;
  font-weight: bold;
}

.hljs-tag,
.hljs-name,
.hljs-attribute {
  color: #000080;
  font-weight: normal;
}

.hljs-regexp,
.hljs-link {
  color: #009926;
}

.hljs-symbol,
.hljs-bullet {
  color: #990073;
}

.hljs-built_in,
.hljs-builtin-name {
  color: #0086b3;
}

.hljs-meta {
  color: #999;
  font-weight: bold;
}

.hljs-deletion {
  background: #fdd;
}

.hljs-addition {
  background: #dfd;
}

.hljs-emphasis {
  font-style: italic;
}

.hljs-strong {
  font-weight: bold;
}
	
pre {
    margin: 0px -16px;
    background-color: #eee;
    color: rgb(0,0,0);
    padding: 5px 20px;
}
	
pre:hover { 
    background-color: rgba(0,0,0,0.1);
}
	
.grid-cell-demo { 
    min-height: 100px; 
    background-color: #bdbdbd;
    color: #fff;
    padding-left: 8px;
    padding-top: 4px;
    text-align: left; 
}
		
.navigation { 
    margin: 75px 0px;
    border-left: solid 3px #C0EbF1;
    padding-left: 20px;
    line-height: 28px;
    list-style-type: none;
    letter-spacing: 0;
}
	
.navigation a { 
    font-weight: 400;
    color: #00BCD4;
    font-size: 16px;
    letter-spacing: 0;
    text-decoration: none;
}
	
.section-title {
    margin-top: 100px; 
    font-size: 16px;
    font-weight: bold;
    color: rgba(0,0,0,0.54);
    letter-spacing: -.02em;
    text-transform: uppercase;
}

.mdl-components {
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    background: #fafafa;
}
	
.mdl-components .mdl-components__nav {
    min-width: 200px;
    width: 200px;
    padding: 24px 0;
    z-index: 2;
}

.mdl-components .mdl-components__pages {
    display: inline-block;
    -webkit-flex-grow: 1;
    -ms-flex-positive: 1;
    flex-grow: 1;
    overflow: auto;
}

.mdl-components .mdl-components__page {
    min-height: 1000px;
}

.mdl-components .docs-toc, .mdl-components .component-title {
    margin-bottom: 60px;
    margin-left: 32px;
}

.mdl-components .component-title h3 {
    font-size: 16px;
    font-weight: 600;
    margin-top: 80px;
    text-transform: uppercase;
    color: rgba(0,0,0,.54);
}

.mdl-components .component-title p {
    font-family: ''Roboto'',''Helvetica'',''Arial'',sans-serif;
    margin-top: 16px;
    margin-bottom: 16px;
    font-size: 13px;
    max-width: 640px;
}

/* SCREENS */

.snippet-group {
    margin-left: -16px;
    margin-right: -16px;
    margin-bottom: 84px;
}

.snippet-group ul { 
    list-style-type: none;
    font-size: 13px;
}

.snippet-group .snippet-header {
    display: table;
    border-collapse: collapse;
    border-spacing: 0;
    width: 100%;
}

.mdl-components .snippet-group.is-full-width .snippet-demo-padding {
    width: 0;
    padding: 8px;
    margin: 0;
}

.mdl-components  .snippet-group.is-full-width .snippet-demos > .snippet-demo {
    width: 100%;
    padding-left: 0;
    padding-right: 0;
}

.mdl-components  .snippet-group.is-full-width .snippet-demo-container {
    width: 100%;
}

.snippet-group .snippet-demos, .snippet-group .snippet-captions {
    display: table-row;
}

.snippet-group .snippet-demos .snippet-demo-padding {
    width: 50%;
}

.snippet-group .snippet-demo-padding, .snippet-group .snippet-caption, .snippet-group .snippet-caption-padding {
    display: table-cell;
    vertical-align: middle;
    margin: 0;
}

.snippet-group .snippet-demo {
    padding: 0 40px 40px;
}

.snippet-group .snippet-demo {
    display: table-cell;
    text-align: center;
    vertical-align: middle;
    margin: 0;
}

.snippet-group .snippet-demo .snippet-demo-container {
    text-align: left;
    display: inline-block;
}

.snippet-group .snippet-captions {
    background-color: #fff;
    height: 48px;
}

.snippet-group .snippet-caption {
    font-size: 13px;
    padding: 0 40px;
    white-space: nowrap;
    text-align: center;
    position: relative;
}

.snippet-group .snippet-code {
    position: relative;
    overflow: hidden;
}

.renderTransparentHeaderOn, .renderFixedDrawerNoHeaderOn, .renderFixedHeaderOn, .renderFixedHeaderAndDrawerOn, .renderScrollingHeaderOn, .renderWaterfallHeaderOn, .renderScrollableTabsOn, .renderFixedTabsOn { 
    box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
    width: 100%;
    position: relative;
    height: 300px;
	background-color: white;
}

.renderLowerLeftMenuOn .container, .renderLowerRightMenuOn .container, .renderTopLeftMenuOn .container, .renderTopRightMenuOn .container {
    position: relative;
    width: 200px;
}

.renderLowerLeftMenuOn .background, .renderLowerRightMenuOn .background, .renderTopLeftMenuOn .background, .renderTopRightMenuOn .background {
    background: white;
    height: 148px;
    width: 100%;
}

.renderLowerLeftMenuOn .bar, .renderLowerRightMenuOn .bar, .renderTopLeftMenuOn .bar, .renderTopRightMenuOn .bar {
    box-sizing: border-box;
    background: #3F51B5;
    color: white;
    width: 100%;
    padding: 16px;
}

.renderLowerRightMenuOn .bar, .renderTopRightMenuOn .bar {
    position: relative;
    height: 64px;
}

.renderLowerRightMenuOn .wrapper, .renderTopRightMenuOn .wrapper {
    box-sizing: border-box;
    position: absolute;
    right: 16px;
  }

.renderDefaultSliderOn, .renderAdvenceSliderOn, .renderDisabledSliderOn, .renderStartingValueSliderOn { 
    width: 30vw;
    max-width: 260px;
}



/* LISTS */

.nestedList.demo .listContent .listContainer .expList img{
	height: 46px;
	width: 46px;
}

.nestedList.demo .listContainer a { 
    font-size: 16px;
    font-weight: inherit;
    color: rgba(0,0,0,.66);
}

.nestedList.demo .listContainer a .item { 
    line-height: 60px;
}
'