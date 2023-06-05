window.addEventListener('load', function() {
  const ivoryUnderLines = document.querySelectorAll("[class^='header-list']");

  ivoryUnderLines.forEach(function(ivoryUnderLine) {
    ivoryUnderLine.addEventListener('mouseover', function() {
      ivoryUnderLine.setAttribute("style", "text-decoration:underline;");
    });

    ivoryUnderLine.addEventListener('mouseout', function() {
      ivoryUnderLine.removeAttribute("style");
    });
  });
});