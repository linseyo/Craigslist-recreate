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

  $('.catagory').on('submit', 'form', function(e){
    e.preventDefault();
    var data = $(this).serialize();
    var url = $(this).attr('action');
    var form = $(this)
    $.ajax({
      type: 'post',
      url: url,
      data: data
    }).done(function(response){
      console.log(form)
      var id = $(form.children()[2]).attr('value')
      $('#catagory-' + id).append(response)
    })
  })
});
