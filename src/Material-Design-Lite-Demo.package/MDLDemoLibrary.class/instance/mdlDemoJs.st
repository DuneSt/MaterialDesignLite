uploaded
mdlDemoJs
	^ 'function MDLSeasideDemo() {
  ''use strict'';
  this.snippets = document.querySelectorAll(''code.hljs''),
  this.init()
}
MDLSeasideDemo.prototype.init = function () {
  ''use strict'';
  [
  ].slice.call(this.snippets).forEach(function (t) {
    t.addEventListener(''click'', this.onMouseClickHandler(t)),
    t.addEventListener(''mouseout'', this.onMouseOutHandler(t))
  }, this)
},
MDLSeasideDemo.prototype.CssClasses_ = {
  COPIED: ''copied'',
  NOT_SUPPORTED: ''nosupport''
},
MDLSeasideDemo.prototype.copyToClipboard = function (t) {
  ''use strict'';
  var e = window.getSelection(),
  n = document.createRange();
  n.selectNodeContents(t),
  e.removeAllRanges(),
  e.addRange(n);
  var s = !1;
  try {
    s = document.execCommand(''copy'')
  } catch (t) {
    console.error(t)
  }
  return e.removeAllRanges(),
  s
},
MDLSeasideDemo.prototype.onMouseClickHandler = function (t) {
  ''use strict'';
  return function () {
    if (!(window.getSelection().toString().length > 0)) {
      var e = this.CssClasses_.COPIED;
      this.copyToClipboard(t) || (e = this.CssClasses_.NOT_SUPPORTED),
      t.classList.add(e)
    }
  }.bind(this)
},
MDLSeasideDemo.prototype.onMouseOutHandler = function (t) {
  ''use strict'';
  return function () {
    t.classList.remove(this.CssClasses_.COPIED)
  }.bind(this)
},
window.addEventListener(''load'', function () {
  ''use strict'';
  new MDLSeasideDemo
});
'