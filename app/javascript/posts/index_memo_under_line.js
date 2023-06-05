window.addEventListener('load', function() {
  const postMemoUnderLines = document.querySelectorAll(`[id^='post_memo']`);

  postMemoUnderLines.forEach(function(postMemoUnderLine) {
    postMemoUnderLine.addEventListener('mouseover', function() {
      postMemoUnderLine.setAttribute("style", "text-decoration:underline;");
    });

    postMemoUnderLine.addEventListener('mouseout', function() {
      postMemoUnderLine.removeAttribute("style");
    });
  });
});