https://github.com/bfintal/Counter-Up
https://github.com/imakewebthings/waypoints


/*����������� �������� ��������*/
<script src="bower_components/jquery-waypoints/waypoints.min.js"></script>
<script src="bower_components/Counter-Up/jquery.counterup.min.js"></script>


/* �������� index.html*/
<div class="post-info__item"><span class="js-counter-comments">6</span> comments</div>
<div class="post-info__item"><i class="heart-icon"></i><span class="js-counter-likes">1112</span></div>

/*����� � CSS*/

/*������ ��� �������� ��������*/
/* Counter Up https://github.com/bfintal/Counter-Up
    ========================*/
    $('.js-counter-comments').counterUp({
        delay: 10,
        time: 1500
    });


    $('.js-counter-likes').counterUp({
        delay: 10,
        time: 3000
    });