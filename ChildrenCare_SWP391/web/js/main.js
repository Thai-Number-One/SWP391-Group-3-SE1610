(function ($) {
    "use strict";

    // Initiate the wowjs
    new WOW().init();


    // Spinner
    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 1);
    };
    spinner();


    // Sticky Navbar
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.sticky-top').addClass('shadow-sm').css('top', '0px');
        } else {
            $('.sticky-top').removeClass('shadow-sm').css('top', '-100px');
        }
    });
    
    
    // Back to top button
    $(window).scroll(function () {
        if ($(this).scrollTop() > 300) {
            $('.back-to-top').fadeIn('slow');
        } else {
            $('.back-to-top').fadeOut('slow');
        }
    });
    $('.back-to-top').click(function () {
        $('html, body').animate({scrollTop: 0}, 1500, 'easeInOutExpo');
        return false;
    });


    // Header carousel
    $(".header-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1500,
        items: 1,
        dots: true,
        loop: true,
        nav : true,
        navText : [
            '<i class="bi bi-chevron-left"></i>',
            '<i class="bi bi-chevron-right"></i>'
        ]
    });


    // Testimonials carousel
    $(".testimonial-carousel").owlCarousel({
        autoplay: true,
        smartSpeed: 1000,
        margin: 24,
        dots: false,
        loop: true,
        nav : true,
        navText : [
            '<i class="bi bi-arrow-left"></i>',
            '<i class="bi bi-arrow-right"></i>'
        ],
        responsive: {
            0:{
                items:1
            },
            992:{
                items:2
            }
        }
    });
    
})(jQuery);
//function nguoidung() {
//    //kiem tra ho ten
//    var hoten = document.formlh.ht.value;
//    //kiem tra so dien thoai
//    var dienthoai = document.formlh.sdt.value;
//    
//
//    //kiểm tra họ tên
//    if (!checkName(hoten)) {
//        addAlertBox('Họ tên không phù hợp.', '#f55', '#000', 3000);
//        formlh.ht.focus();
//        return false;
//    }
//    //-------
//    else if (!checkPhone(dienthoai)) {
//        addAlertBox('Số điện thoại không phù hợp.', '#f55', '#000', 3000);
//        return false;
//    }
//    if (!checkPhone2(dienthoai)) {
//        addAlertBox('Số điện thoại không phù hợp.', '#f55', '#000', 3000);
//        return false;
//    }
//    if (!checkPhone3(dienthoai)) {
//        addAlertBox('Số điện thoại không phù hợp.', '#f55', '#000', 3000);
//        return false;
//    }
//    
// var button = document.getElementById("btn");
//            submit.onclick = function(){
//                alert("Gửi thành công. Chúng tôi chân thành cám ơn những góp ý từ bạn.");
//            }
//           
//    //addAlertBox('Gửi thành công. Chúng tôi chân thành cám ơn những góp ý từ bạn.', '#5f5', '#000', 5000); // cám ơn
//    // document.formlh.reset(); // làm sạch
//    //return false; // thoát
//}
//
//function checkName(str) {
//    var special = '~!@#$%^&*()_+=-`./*{}[]|\'<>?;"';
//
//    for (var i = 0; i < str.length; i++) {
//        if (Number(str[i])) return false;
//        for(var j = 0; j < special.length; j++)
//            if (str[i] == special[j]) return false;
//    }
//    return true;
//}
//
//function checkPhone(phone) {
//    for(var i =0 ; i< phone.length ;i++)
//    {
//        if(phone.charAt(i)<"0" || phone.charAt(i)>"9")
//            return false;
//    }
//    return true;
//}
//
//function checkPhone2(phone) {
//    var phoneno = /^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$/;
//    if (phone.match(phoneno)) {
//        return true;
//    }else{
//        return false;
//    }
//
//    
//}
//function checkPhone3(phone) {
//    $(document).ready(function() {
//    $('body').on('click','.checkAll', function() {
//    var vnf_regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
//    var mobile = $('#phone').val();
//    if(mobile !==''){
//        if (vnf_regex.test(mobile) == false) 
//        {
//            alert('Số điện thoại của bạn không đúng định dạng!');
//        }else{
//            alert('Số điện thoại của bạn hợp lệ!');
//        }
//    }else{
//        alert('Bạn chưa điền số điện thoại!');
//    }
//    });
//});
//    
//}
function validate(){
  var name = document.getElementById("name").value;
  var phone = document.getElementById("phone").value;
  var email = document.getElementById("email").value;
  var message = document.getElementById("message").value;
  var error_message = document.getElementById("error_message");
  
  error_message.style.padding = "10px";

 var text;
  if(name.length < 5){
    text = "Please Enter valid Name";
    error_message.innerHTML = text;
    return false;
  }
var phone = /((09|03|07|08|05)+([0-9]{8})\b)/g;
  if(phone.match(phone)) {
    text = "Please Enter valid Phone Number";
    error_message.innerHTML = text;
    return true;
  }  else {  
    return false;
  }

  if(email.indexOf("@") == -1 || email.length < 6){
    text = "Please Enter valid Email";
    error_message.innerHTML = text;
    return false;
  }
  if(message.length <= 10){
    text = "Please Enter More Than 10 Characters";
    error_message.innerHTML = text;
    return false;
  }

  alert("Form Submitted Successfully!");
  return true;
  
}

