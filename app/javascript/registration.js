/* サインアップをクリックするとモーダルウィンドウ表示 */
$(function () { 
  $('.signUp').on('click',function () {
      $('.modal-signup').fadeIn();
      return false;
  });
  $('.modal-bg-signin').on('click',function () {
      $('.modal-signin').fadeOut();
      return false;
  });

/* 新規登録の「ログイン」をクリックするとログインのモーダルウィンドウ表示 */
  $('.login').on('click',function () {
      $('.modal-signin').fadeIn(),
      $('.modal-signup').fadeOut()
      return false;
  });
  $('.modal-bg-signin').on('click',function () {
      $('.modal-signin').fadeOut();
      return false;
  });

/* 新規登録の「ログイン」にマウスオーバーで色が変わる */
  $('.login').hover(function() {
    $(this).css('color', '#000080');
  }, function() {
    $(this).css('color', '');
  });

/* 新規登録時メールアドレスのバリデーション */
  $('#signup-form').submit(function()  {
    let error;
    let value = $('#email').val();
    if (value === '' || !value.match(/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/)){
      error = true
    }

    if (error) {
      $('.email-error').show()
      return false;
    } else {
      $('.email-error').hide()
    }
  });

/* 新規登録時パスワードのバリデーション */ 
  $('#signup-form').submit(function() {
    let error;
    let value = $('#password').val();
    if (value === '' || !value.match(/^(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}$/i)){
      error = true
    }

    if (error) {
      $('.password-error').show()
      return false;
    } else {
      $('.password-error').hide()
    }
  });

/* 新規登録の「続ける」にマウスオーバーで色が変わる */
  $('.signup-btn').hover(function() {
    $(this).css('background', '#c00');
  }, function() {
    $(this).css('background', '');
  });

/* ログインを押すとモーダルが表示  */
  $('.logIn').on('click',function () {
      $('.modal-signin').fadeIn();
      return false;
  });
  $('.modal-bg-signin').on('click',function () {
      $('.modal-signin').fadeOut();
      return false;
  });

/* ログイン時メールアドレスのバリデーション */
  $('#signin-form').submit(function()  {
    let error;
    let value = $('#signin-email').val();
    if (value === '' || !value.match(/^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/)){
      error = true
    }

    if (error) {
      $('.signin-email-error').show()
      return false;
    } else {
      $('.signin-email-error').hide()
    }
  });

/* ログイン時パスワードのバリデーション */
  $('#signin-form').submit(function() {
    let error;
    let value = $('#signin-password').val();
    if (value === '' || !value.match(/^(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}$/i)){
      error = true
    }

    if (error) {
      $('.signin-password-error').show()
      return false;
    } else {
      $('.signin-password-error').hide()
    }
  });

/* ログインの「続ける」にマウスオーバーで色が変わる */
  $('.signin-btn').hover(function() {
    $(this).css('background', '#c00');
  }, function() {
    $(this).css('background', '');
  });

/* ログインの「アカウントを作成」にマウスオーバーで色が変わる */
  $('.create-account').hover(function() {
    $(this).css({
      background: 'black',
      color: 'white'
    });
  }, function() {
    $(this).css({
      background: '',
      color: ''
    });
  });

/* ログインの「アカウントを作成」をクリックすると新規登録のモーダルウィンドウ表示 */
  $('.create-account').on('click',function () {
      $('.modal-signup').fadeIn(),
      $('.modal-signin').fadeOut()
      return false;
  });
  $('.modal-bg-signup').on('click',function () {
      $('.modal-signup').fadeOut();
      return false;
  });
});