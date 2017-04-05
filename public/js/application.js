$(document).ready(function() {
    $('#showForm').click(function() {
        $('#createCategory').removeClass('hidden');
    });

    $('#createCategory').submit(function(event) {
        event.preventDefault();
        var newCategory = $(this).children().val();
        $.ajax({
            url: '/categories',
            type: 'POST',
            data: {
                category: {
                    name: newCategory,
                },
            },
        }).done(function(response) {
            var name = JSON.parse(response).name;
            $('body').append("<div>" + name + "</div>");
        });
    });
});
