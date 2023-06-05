window.addEventListener('load', function() {
  const underLines = document.querySelectorAll("[class^='side-item']");

  underLines.forEach(function(underLine) {
    underLine.addEventListener('mouseover', function() {
      underLine.setAttribute("style", "text-decoration:underline;");
    });

    underLine.addEventListener('mouseout', function() {
      underLine.removeAttribute("style");
    });
  });
});