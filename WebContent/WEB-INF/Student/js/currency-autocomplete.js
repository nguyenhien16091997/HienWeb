$(function(){
  var currencies = [
    { value: 'Xem điểm thi',data: 'xemdiemthi.jsp'},
    { value: 'Lịch thi',data: 'lichthi.jsp'},
    { value: 'Thông tin cá nhân',data: 'PersionInformation.jsp' },
    { value: 'liên hệ', data:'contact.jsp' },
    { value: 'Đăng xuất', data:'../Guest/Login.jsp' },
    { value: 'Trang chủ', data:'HomePage.jsp' },
    
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
