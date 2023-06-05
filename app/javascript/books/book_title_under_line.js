window.addEventListener('load', function() {
  const bookTitleUnderLines = document.querySelectorAll(`[id^='book_title']`);

  bookTitleUnderLines.forEach(function(bookTitleUnderLine) {
    bookTitleUnderLine.addEventListener('mouseover', function() {
      bookTitleUnderLine.setAttribute("style", "text-decoration:underline;");
    });

    bookTitleUnderLine.addEventListener('mouseout', function() {
      bookTitleUnderLine.removeAttribute("style");
    });
  });
});