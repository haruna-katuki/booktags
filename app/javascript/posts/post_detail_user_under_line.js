window.addEventListener('load', function(){

  const postDetailUserUnderLine = document.getElementById("post_detail_user")

  postDetailUserUnderLine.addEventListener('mouseover', function() {
    postDetailUserUnderLine.setAttribute("style", "text-decoration:underline;");
  });

  postDetailUserUnderLine.addEventListener('mouseout', function() {
    postDetailUserUnderLine.removeAttribute("style");
  });

})