$(function() {
  function buildHTML(comment) {
    if ( comment.user_id == comment.tweet_id ) {
      if (comment.image) {
        let html = 
          `<div class="Post__comment__list__host">
            <div class="Post__comment__list__host__image">
              <a href="/users/${comment.user_id}"><img src="${comment.image}"></a>
            </div>
              <div class="Post__comment__list__host__text">
                <h5>${comment.created_at}</h5>
                <p>${comment.text}</p>
              </div>
            </div>
          </div>`
        return html;
      } else {
        let html = 
          `<div class="Post__comment__list__host">
            <div class="Post__comment__list__host__image">
              <a href="/users/${comment.user_id}"><img src="/uploads/user/image/2/user1.jpg"></a>
            </div>
              <div class="Post__comment__list__host__text">
                <h5>${comment.created_at}</h5>
                <p>${comment.text}</p>
              </div>
            </div>
          </div>`
        return html;
      }
    } else {
      if (comment.image) {
        let html =
          `<div class="Post__comment__list__post">
            <div class="Post__comment__list__post__text">
              <h5>${comment.created_at}</h5>
              <p>${comment.text}</p>
            </div>
            <div class="Post__comment__list__post__image">
              <a href="/users/${comment.user_id}"><img src="${comment.image}"></a>
            </div>
          </div>`
        return html;
      } else {
        let html =
          `<div class="Post__comment__list__post">
            <div class="Post__comment__list__post__text">
              <h5>${comment.created_at}</h5>
              <p>${comment.text}</p>
            </div>
            <div class="Post__comment__list__post__image">
              <a href="/users/${comment.user_id}"><img src="/uploads/user/image/2/user1.jpg"></a>
            </div>
          </div>`
        return html;
      }
    }
  }
  $('#new_comment').on('submit', function(e) {
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "post",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data) {
      let html = buildHTML(data);
      $('.Post__comment__list').append(html);
      $('form')[0].reset();
      $('.submit').prop('disabled', false);
      $('.Post__comment__list').animate({ scrollTop: $('.Post__comment__list')[0].scrollHeight});
    })
    .fail(function() {
      alert('メッセージが送信できませんでした');
    }) 
  })
});