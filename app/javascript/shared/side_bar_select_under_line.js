window.addEventListener('load', function(){

  const sideLinkUnderLine = document.getElementById("side_link")

  sideLinkUnderLine.addEventListener('mouseover', function() {
    sideLinkUnderLine.setAttribute("style", "text-decoration:underline;");
  });

  sideLinkUnderLine.addEventListener('mouseout', function() {
    sideLinkUnderLine.removeAttribute("style");
  });

})