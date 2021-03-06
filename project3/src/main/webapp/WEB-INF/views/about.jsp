<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
	<link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
	<link rel="stylesheet"
		href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">  
	<link rel="stylesheet" href="/resources/css/about.css">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<body>

	<div id="carouselExampleIndicators" class="carousel slide mt-5" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner back inner">
    <div class="carousel-item active">
      <a href="https://kream.co.kr/promotions/171"><img src="/resources/img/์นด๋ํ ์ธ.jpg" class="d-block w-100" alt="..." style="height:500px; object-fit: contain; background:#5F2BD8;"></a>
    </div>
    <div class="carousel-item">
      <img src="/resources/img/์์ผ.jpg" class="d-block w-100" alt="..." " style="height:500px; object-fit: contain; background:#4176C4;">
    </div>
    <div class="carousel-item">
      <img src="/resources/img/์ํ๋ฆผ๋ฐฐ๊ฒฝ.jpg" class="d-block w-100" alt="..." " style="height:500px; object-fit:contain; background:#F4F4F4;">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div id="tbl1" style="width:1300px;">
	<div>
		<div class="pro1">
			<a href="/product/new">
				<img src="/resources/img/new1.webp" />
			</a>
			<p>New</p>
		</div>
		<div class="pro1">
			<a href="#">
				<img src="/resources/img/์๋๋ค์ค๋ก๊ณ .jpg" 
				style="object-fit:contain; background:black;"
				/>
			</a>
			<p>์ธ๊ธฐ๋ธ๋๋</p>
		</div>
		<div class="pro1">
			<a href="https://kream.co.kr/promotions/43">
				<img src="/resources/img/๋น ๋ฅธ๋ฐฐ์ก.webp"/>
			</a>
			<p>๋น ๋ฅธ๋ฐฐ์ก</p>
		</div>
		<div class="pro1">
			<a href="#">
				<img src="/resources/img/๋ชํ๊ฐ๋ฐฉ.webp"/>
			</a>
			<p>๋ชํ</p>
		</div>
	</div>
</div>      
<div style="padding: 50px 50px; width: 80%; height: 700px; margin:0px auto;">
	<div class="title1">
		<h3 style="text-align:center;"><strong>์ธ๊ธฐ์ํ</strong></h3><br>
	</div>
	<div id="slider-div"></div>
	<script id="temp" type="text/x-handlebars-template">
		{{#each list}}
		<div class="pro">
			<div><a href=""><img src="/display?fileName={{pimage}}" width=150 border-radius=15></a></div>
			<div><p class="ellipsis pename">{{pename}}</p></div>
			<div><p class="ellipsis pkname">{{pkname}}</p></div>
			<div><p class="ellipsis pbrand">{{pbrand}}</p></div>
			<div><p class="ellipsis plprice">{{plprice}}</p></div>
		</div>
		{{/each}}
	</script>
</div>
<div><img src="/resources/img/์บ ํผ์ค๋ฃฉ.jpg" style="width:100%; height:500px; object-fit:contain; background:#4E69A0;"></div>
<div style="padding: 50px 50px; width: 80%; height: 700px; margin:0px auto;">
	<div class="title1">
		<h3 style="text-align:center;"><strong>์ต์ ์ํ</strong></h3><br>
	</div>
	<div id="slider-div1"></div>
	<script id="temp1" type="text/x-handlebars-template">
		{{#each list2}}
		<div class="pro">
			<div><a href=""><img src="/display?fileName={{pimage}}" width=150></a></div>
			<div><p class="ellipsis pename">{{pename}}</p></div>
			<div><p class="ellipsis pkname">{{pkname}}</p></div>
			<div><p class="ellipsis pbrand">{{pbrand}}</p></div>
			<div><p class="ellipsis ssell">{{display ssell}}์</p></div>
		</div>
		{{/each}}
	</script>
</div>
</body>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
	<script>
	//์ต์ ์ํ์ฌ๋ผ์ด๋
	function destroyCarousel() {
	    if ($('#slider-div1').hasClass('slick-initialized')) {
	        $('#slider-div1').slick('unslick');
	    }
	}

    
    $.ajax({
		type:"get",
		dataTtpe:"json",
		url: "/product/list2.json",
		success:function(data){
			var template = Handlebars.compile($("#temp1").html());
			$("#slider-div1").html(template(data));	
			applySlider1();
		}
	});
	</script>
	<script>
		Handlebars.registerHelper("display", function(ssell){
		      return ssell.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
		   });
	</script>


<script>  
    
    
    function applySlider1(){
        $('#slider-div1').slick({
            slide : 'div',  //์ฌ๋ผ์ด๋ ๋์ด์ผ ํ  ํ๊ทธ ex) div, li 
            infinite : true,  //๋ฌดํ ๋ฐ๋ณต ์ต์
            slidesToShow :5,  // ํ ํ๋ฉด์ ๋ณด์ฌ์ง ์ปจํ์ธ  ๊ฐ์
            slidesToScroll : 1,  //์คํฌ๋กค ํ๋ฒ์ ์์ง์ผ ์ปจํ์ธ  ๊ฐ์
            speed : 500,  // ๋ค์ ๋ฒํผ ๋๋ฅด๊ณ  ๋ค์ ํ๋ฉด ๋จ๋๋ฐ๊น์ง ๊ฑธ๋ฆฌ๋ ์๊ฐ(ms)
            arrows : true,  // ์์ผ๋ก ์ด๋ํ๋ ํ์ดํ ํ์ ์ฌ๋ถ
            dots : false,  // ์คํฌ๋กค๋ฐ ์๋ ์ ์ผ๋ก ํ์ด์ง๋ค์ด์ ์ฌ๋ถ
            autoplay : true,  // ์๋ ์คํฌ๋กค ์ฌ์ฉ ์ฌ๋ถ
            autoplaySpeed : 2000,  // ์๋ ์คํฌ๋กค ์ ๋ค์์ผ๋ก ๋์ด๊ฐ๋๋ฐ ๊ฑธ๋ฆฌ๋ ์๊ฐ (ms)
            pauseOnHover : true,  // ์ฌ๋ผ์ด๋ ์ด๋    ์ ๋ง์ฐ์ค ํธ๋ฒํ๋ฉด ์ฌ๋ผ์ด๋ ๋ฉ์ถ๊ฒ ์ค์ 
            vertical : false,  // ์ธ๋ก ๋ฐฉํฅ ์ฌ๋ผ์ด๋ ์ต์
            prevArrow : "<button type='button' class='prev'>โ</button>",  // ์ด์  ํ์ดํ ๋ชจ์ ์ค์ 
            nextArrow : "<button type='button' class='next'>โท</button>",  // ๋ค์ ํ์ดํ ๋ชจ์ ์ค์ 
            dotsClass : "slick-dots",  //์๋ ๋์ค๋ ํ์ด์ง๋ค์ด์(์ ) css class ์ง์ 
            draggable : false,  //๋๋๊ทธ ๊ฐ๋ฅ ์ฌ๋ถ 

            // ๋ฐ์ํ ์น๊ตฌํ ์ต์
            responsive : [
                {
                    breakpoint : 960,  //ํ๋ฉด ์ฌ์ด์ฆ 960px
                    settings : { slidesToShow : 3 }  //์์ ์ต์์ด ๋ํดํธ , ์ฌ๊ธฐ์ ์ถ๊ฐํ๋ฉด ๊ทธ๊ฑธ๋ก ๋ณ๊ฒฝ
                },
                {
                    breakpoint : 768,  //ํ๋ฉด ์ฌ์ด์ฆ 768px
                    settings : { slidesToShow : 2 }  //์์ ์ต์์ด ๋ํดํธ , ์ฌ๊ธฐ์ ์ถ๊ฐํ๋ฉด ๊ทธ๊ฑธ๋ก ๋ณ๊ฒฝ
                }
            ]
        });
    };

	//์ธ๊ธฐ์ํ ์ฌ๋ผ์ด๋
	function destroyCarousel() {
	    if ($('#slider-div').hasClass('slick-initialized')) {
	        $('#slider-div').slick('unslick');
	    }
	}

	    
	    $.ajax({
			type:"get",
			dataTtpe:"json",
			url: "/product/list.json",
			success:function(data){
				var template = Handlebars.compile($("#temp").html());
				$("#slider-div").html(template(data));	
    			applySlider();
			}
		});
	    
	    
	    
	    function applySlider(){
	        $('#slider-div').slick({
	            slide : 'div',  //์ฌ๋ผ์ด๋ ๋์ด์ผ ํ  ํ๊ทธ ex) div, li 
	            infinite : true,  //๋ฌดํ ๋ฐ๋ณต ์ต์
	            slidesToShow :5,  // ํ ํ๋ฉด์ ๋ณด์ฌ์ง ์ปจํ์ธ  ๊ฐ์
	            slidesToScroll : 1,  //์คํฌ๋กค ํ๋ฒ์ ์์ง์ผ ์ปจํ์ธ  ๊ฐ์
	            speed : 500,  // ๋ค์ ๋ฒํผ ๋๋ฅด๊ณ  ๋ค์ ํ๋ฉด ๋จ๋๋ฐ๊น์ง ๊ฑธ๋ฆฌ๋ ์๊ฐ(ms)
	            arrows : true,  // ์์ผ๋ก ์ด๋ํ๋ ํ์ดํ ํ์ ์ฌ๋ถ
	            dots : false,  // ์คํฌ๋กค๋ฐ ์๋ ์ ์ผ๋ก ํ์ด์ง๋ค์ด์ ์ฌ๋ถ
	            autoplay : true,  // ์๋ ์คํฌ๋กค ์ฌ์ฉ ์ฌ๋ถ
	            autoplaySpeed : 2000,  // ์๋ ์คํฌ๋กค ์ ๋ค์์ผ๋ก ๋์ด๊ฐ๋๋ฐ ๊ฑธ๋ฆฌ๋ ์๊ฐ (ms)
	            pauseOnHover : true,  // ์ฌ๋ผ์ด๋ ์ด๋    ์ ๋ง์ฐ์ค ํธ๋ฒํ๋ฉด ์ฌ๋ผ์ด๋ ๋ฉ์ถ๊ฒ ์ค์ 
	            vertical : false,  // ์ธ๋ก ๋ฐฉํฅ ์ฌ๋ผ์ด๋ ์ต์
	            prevArrow : "<button type='button' class='prev'>โ</button>",  // ์ด์  ํ์ดํ ๋ชจ์ ์ค์ 
	            nextArrow : "<button type='button' class='next'>โท</button>",  // ๋ค์ ํ์ดํ ๋ชจ์ ์ค์ 
	            dotsClass : "slick-dots",  //์๋ ๋์ค๋ ํ์ด์ง๋ค์ด์(์ ) css class ์ง์ 
	            draggable : false,  //๋๋๊ทธ ๊ฐ๋ฅ ์ฌ๋ถ 

	            // ๋ฐ์ํ ์น๊ตฌํ ์ต์
	            responsive : [
	                {
	                    breakpoint : 960,  //ํ๋ฉด ์ฌ์ด์ฆ 960px
	                    settings : { slidesToShow : 3 }  //์์ ์ต์์ด ๋ํดํธ , ์ฌ๊ธฐ์ ์ถ๊ฐํ๋ฉด ๊ทธ๊ฑธ๋ก ๋ณ๊ฒฝ
	                },
	                {
	                    breakpoint : 768,  //ํ๋ฉด ์ฌ์ด์ฆ 768px
	                    settings : { slidesToShow : 2 }  //์์ ์ต์์ด ๋ํดํธ , ์ฌ๊ธฐ์ ์ถ๊ฐํ๋ฉด ๊ทธ๊ฑธ๋ก ๋ณ๊ฒฝ
	                }
	            ]
	        });
	    };

</script>

