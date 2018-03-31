javascript
panelsJs
	^ 'function initLeftResizer() {
  var resizers = document.getElementsByClassName("resizer-left");

  if (resizers.length > 0) {
    Array.prototype.forEach.call(resizers, element => { element.addEventListener(''mousedown'', initLeftResize)});
  }
}

function initRightResizer() {
  var resizers = document.getElementsByClassName("resizer-right");

  if (resizers.length > 0) {
    Array.prototype.forEach.call(resizers, element => { element.addEventListener(''mousedown'', initRightResize)});
  }
}

function initLeftResize(event) {
    beginResizing();
    window.currentTarget = event.target;
    window.addEventListener(''mousemove'', ResizeLeft);
    window.addEventListener(''mouseup'', stopResizeLeft);
}

function initRightResize(event) {
    beginResizing();
    window.currentTarget = event.target;
    event.target.parentNode.style.transition = ''width 0s'';
    window.addEventListener(''mousemove'', ResizeRight);
    window.addEventListener(''mouseup'', stopResizeRight);
}

function beginResizing(){
  (document.getElementsByTagName("body")[0]).setAttribute("style", "-webkit-touch-callout: none; -webkit-user-select: none; -khtml-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none;")
    var vs = document.getElementsByClassName("visualization");
    for (var i = 0; i < vs.length; i++) {
        vs[i].firstChild.style.width = 0
    }
}

function ResizeLeft(e) {
    var resizer = window.currentTarget;
    resizer.parentNode.style.width = (e.clientX - resizer.parentNode.offsetLeft) + ''px'';
}

function stopResizeLeft() {
    (document.getElementsByTagName("body")[0]).removeAttribute("style");
    window.removeEventListener(''mousemove'', ResizeLeft);
    window.currentTarget = undefined;
    window.removeEventListener(''mouseup'', stopResizeLeft);
    for (i = 0; i < visus.length; i++) {
        visus[i].visu.resize();
        visus[i].visu.fit()
    }
}

function ResizeRight(e) {
    var resizer = window.currentTarget;
    resizer.parentNode.style.width = ($(window).width() - e.clientX) + ''px'';
}

function stopResizeRight() {
    (document.getElementsByTagName("body")[0]).removeAttribute("style");
    window.currentTarget.parentNode.style.transition = '''';
    window.removeEventListener(''mousemove'', ResizeRight);
    window.currentTarget = undefined;
    window.removeEventListener(''mouseup'', stopResizeRight);
    for (i = 0; i < visus.length; i++) {
        visus[i].visu.resize();
        visus[i].visu.fit()
    }
}
'