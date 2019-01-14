$(function () {
  $(".js-more").on('click', function() {
    let id = $(this).data("id")
    $.get("/posts/" + id + "/body", function(data) {
      $("#body-" + id).text(data)
    })
  })
})