window.addEventListener('load', function(){

  const logoUnderLine = document.getElementById("logo")

  logoUnderLine.addEventListener('mouseover', function() {
    logoUnderLine.setAttribute("style", "text-decoration:underline;");
  });

  logoUnderLine.addEventListener('mouseout', function() {
    logoUnderLine.removeAttribute("style");
  });

})