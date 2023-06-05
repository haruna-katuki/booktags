window.addEventListener('load', function() {
  const postTitleUnderLines = document.querySelectorAll(`[id^='post_title']`);

  postTitleUnderLines.forEach(function(postTitleUnderLine) {
    postTitleUnderLine.addEventListener('mouseover', function() {
      postTitleUnderLine.setAttribute("style", "text-decoration:underline;");
    });

    postTitleUnderLine.addEventListener('mouseout', function() {
      postTitleUnderLine.removeAttribute("style");
    });
  });
});