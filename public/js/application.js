$(document).ready(function() {
  $('.show-catagory').on('click', function(e){
    e.preventDefault();
    var url = $(this).attr('href')
    var id = $(this).attr('id')
    $.ajax({
      type: 'GET',
      url: url
    }).done(function(response){
      $('#category-' + id).append(response)
    })
  })
  $('.container').on('click', '.show-form', function(e){
    e.preventDefault();
    var url = $(this).attr('href');
    var id = this.dataset.catagoryId;
    $.ajax({
      type: 'GET',
      url: url
    }).done(function(response){
      $('#category-' + id).append(response)
    })
  });
});
