$(function(){
  var currencies = [
    { value: 'Quản lý kho câu hỏi',data: 'QuestionManagement.jsp'},
    { value: 'Thông tin cá nhân',data: 'PersionImformation.jsp' },
    { value: 'liên hệ', data:'Contact.jsp' },
    { value: 'Đăng xuất', data:'../Guest/Login.jsp' },
    { value: 'Trang chủ', data:'HomePage.jsp' },
    { value: 'Đổi mật khẩu', data:'ChangePassword.jsp' },

    
  ];
  var hide=true;
  // setup autocomplete function pulling from currencies[] array
  $('#autocomplete').autocomplete({
    lookup: currencies,
    onSelect: function (suggestion) {
        $('#hide').hide();
        {
            if (hide) {
                 $('#show_onclick').toggleClass('test');
                 hide=false;
            }
        }
      var thehtml = '<a href="'+suggestion.data+'"><i class="glyphicon glyphicon-search"></i></a> ' ;   
      $('#show_onclick').html(thehtml);
    }
  }); 
});
