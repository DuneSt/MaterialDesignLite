list
nestedListJs
	^ '/**
 * This function toggle the expand/collapse of an item of the list.
 * @param element The element to toggle.
 */
function expandCollapse(element) {
    var li = $(element).closest("li");
    var listContainer = li.closest(".listContainer");
    if(li.children("ul").length == 0){
        activateSpinnerOf(listContainer.closest(".nestedList").find(".listResearchField"));
        var dataObj = {};
        dataObj[listContainer[0].dataset.childrencbid] = li.attr("index");
        $.ajax({
            url: listContainer[0].dataset.url,
            type: "POST",
            data: dataObj,
            success: function (html_code) {
                li.append(html_code);
	             eval(listContainer[0].dataset.onloadhook);
                desactivateSpinnerOf(listContainer.closest(".nestedList").find(".listResearchField"));
            },
            error: function () {
                location.reload();
            }
        })
    }
    li.toggleClass("expanded");
    li.children("ul").toggle("medium");
    li.toggleClass("collapsed");
}

function loadBefore(start, end, listContainer) {
    load(start, end, listContainer, true);
}

function loadAfter(start, end, listContainer) {
    load(start, end, listContainer, false);
}

/**
 * I will load X elements of a list and I will delete the previous or the next elements.
 *
 * @param start The starting element to add.
 * @param end The end element to add.
 * @param listContainer The list to complete.
 * @param shouldDeleteLast A boolean saying if we should delete the first or the last elements.
 */
function load(start, end, listContainer, shouldDeleteLast) {
    activateSpinnerOf($(listContainer).closest(".nestedList").find(".listResearchField"));
    var dataObj = {};
    dataObj[listContainer.dataset.cbid] = start + ":" + end;
    $.ajax({
        url: listContainer.dataset.url,
        type: "POST",
        data: dataObj,
        success: function (html_code) {
            // We use a document fragment to speed up the addition and deletion of the elements on the browser
            var docFrag = document.createDocumentFragment();
            var scrolling = listContainer.scrollTop;
            var list = listContainer.getElementsByClassName("expList")[0];
            for (var i = 0; i < listContainer.dataset.loadingstep; i++) {
                if (shouldDeleteLast) {
                    scrolling = scrolling + ($(list.children[list.children.length - i]).height());
                } else {
                    scrolling = scrolling - ($(list.children[i]).height());
                }
            }
            docFrag.appendChild(list);
            if (shouldDeleteLast) {
                list = $(list).prepend(html_code)[0];
            } else {
                list = $(list).append(html_code)[0];
            }

            while (list.children.length > listContainer.dataset.listmaxsize) {
                if (shouldDeleteLast) {
                    list.removeChild(list.lastChild);
                } else {
                    list.removeChild(list.firstChild);
                }
            }
            listContainer.appendChild(list);
            listContainer.scrollTop = scrolling;
            eval(listContainer.dataset.onloadhook);
            desactivateSpinnerOf($(listContainer).closest(".nestedList").find(".listResearchField"));
        },
        error: function () {
            location.reload();
        }
    });
}

function obtainLastIndex(listContainer) {
    var children = listContainer.children[0].children;
    return parseInt(children[children.length - 1].getAttribute("index"));
}

function obtainFirstIndex(listContainer) {
    var children = listContainer.children[0].children;
    return parseInt(children[0].getAttribute("index"));
}

/**
 * I define a function to load more elements when we are at the beginning or at the end of the list.
 */
function defineExpandable() {

    $(".listContainer").scroll(function (e) {
        // If we have less elements in the list than the max we can show, just do nothing.
        if (e.currentTarget.dataset.listmaxsize == e.currentTarget.getElementsByClassName("expList")[0].children.length) {

            var tempLastIndex;
            if (0.2 > (e.currentTarget.scrollTop) / e.currentTarget.scrollHeight && e.currentTarget.getElementsByClassName("expList")[0].children[0].getAttribute("index") != "1") {
                tempLastIndex = obtainFirstIndex(e.currentTarget);
                if (tempLastIndex < e.currentTarget.dataset.lastindexasked) {
                    //this test is to avoid asking multiple time to the server
                    e.currentTarget.dataset.lastindexasked = tempLastIndex;
                    loadBefore(parseInt(e.currentTarget.dataset.lastindexasked) - parseInt(e.currentTarget.dataset.loadingstep), parseInt(e.currentTarget.dataset.lastindexasked) - 1, e.currentTarget);
                }
            }

            if (0.8 < (e.currentTarget.scrollTop + $(e.currentTarget).height()) / e.currentTarget.scrollHeight) {
                tempLastIndex = obtainLastIndex(e.currentTarget);
                if (tempLastIndex > e.currentTarget.dataset.lastindexasked) {
                    //this test is to avoid asking multiple time to the server
                    e.currentTarget.dataset.lastindexasked = tempLastIndex;
                    loadAfter(parseInt(e.currentTarget.dataset.lastindexasked) + 1, parseInt(e.currentTarget.dataset.lastindexasked) + parseInt(e.currentTarget.dataset.loadingstep), e.currentTarget);
                }
            }
        }
    });

}

function scrollToSelection() {
    $($("div.isSelected").get().reverse()).each(scrollTo); //In case there is two selected in the same list, go to the first one in last
}

/**
 * I will scroll a list to his selected node passed as parameter.
 * @param aSelectedNode The node to scroll to.
 */
function scrollTo(index, aSelectedNode) {
    var scrollTo = $(aSelectedNode).parentsUntil(".listContainer", "li").last();
    var container = $(scrollTo.closest(".listContainer"));
    container.animate({scrollTop: scrollTo.offset().top - container.offset().top + container.scrollTop()}, 100);
}

/**
 * This function allow to activate the spinner in the research bar when there is one.
 * @param aListResearchField the research field of the list.
 */
function activateSpinnerOf(aListResearchField) {
    aListResearchField.find(".mdl-spinner").addClass("is-active");
}

/**
 * This function allow to remove the spinner in the research bar when there is one.
 * @param aListResearchField the research field of the list.
 */
function desactivateSpinnerOf(aListResearchField) {
    aListResearchField.find(".mdl-spinner").removeClass("is-active");
}

function initSearchFields() {
    $(".listResearchField").find("input").change(function () {
        activateSpinnerOf($(this).parents(".listResearchField"));
    });
}

function stopSpinnerOf(researchDivId) {
    desactivateSpinnerOf($("#" + researchDivId).parents(".listResearchField"));
}

function initNestedList(){
    scrollToSelection();
    defineExpandable();
    initSearchFields();
}

window.addEventListener("load", function () {
    initNestedList();
});
'