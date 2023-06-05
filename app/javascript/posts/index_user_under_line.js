window.addEventListener('load', function() {
  const postUserUnderLines = document.querySelectorAll(`[id^='post_user']`);

  postUserUnderLines.forEach(function(postUserUnderLine) {
    postUserUnderLine.addEventListener('mouseover', function() {
      postUserUnderLine.setAttribute("style", "text-decoration:underline;");
    });

    postUserUnderLine.addEventListener('mouseout', function() {
      postUserUnderLine.removeAttribute("style");
    });
  });
});