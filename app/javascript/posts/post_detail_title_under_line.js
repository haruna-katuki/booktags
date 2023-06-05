window.addEventListener('load', function(){

  const postDetailTitleUnderLine = document.getElementById("post_detail_title")

  postDetailTitleUnderLine.addEventListener('mouseover', function() {
    postDetailTitleUnderLine.setAttribute("style", "text-decoration:underline;");
  });

  postDetailTitleUnderLine.addEventListener('mouseout', function() {
    postDetailTitleUnderLine.removeAttribute("style");
  });

})