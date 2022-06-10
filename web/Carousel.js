

"use strict";

///========================================== Carousel slide elements data, each slide has title, description & image. ===========================================================///

 const carousel_data =
[
    {
        "title": "Un simple geste...  peut sauvez une vie.",
        "description": "",
        "image": "./Resources/Images/Carousel/1.jpg"
    },
    {
        "title": "Donnez la vie...  donnez du sang.",
        "description": "",
        "image": "./Resources/Images/Carousel/2.jpg"
    },
    {
        "title": "Soyez un héros... c'est dans votre sang.",
        "description": "",
        "image": "./Resources/Images/Carousel/3.jpg"
    }
];

$(document).ready(function () 
{
    // Insert elements into carousel div
    carousel_data.forEach((slide) => 
    {
        // deconstruct each slide element properties
        const {title, description, image} = slide;

        // add slide element to carousel container
        $(".carousel").append(`
                            <div class="carousel-item" style="background-image: url(${image}); background-size: cover; background-position: center center; background-repeat: no-repeat; height: 100%; width: 100%;">
                             <div class="transparent-black" style="background-color: rgba(0, 0, 0, 0.5);  width: 100%; height: 680px; display: flex; flex-direction: column; justify-content: center; align-items: center;">
                              <div class="carousel-item-title" style="width: 60%; font-size: 45px; overflow:hidden; letter-spacing: 0px; font-weight: 900; color: white; text-transform: uppercase; padding: 10px; text-align: center;">
                               ${title}
                               </div>
                               <div class="carousel-item-text" style="width: 60%; font-size: 24px; overflow:hidden; letter-spacing: 0px; font-weight: 300; color: white;  padding: 10px; text-align: center;">
                               ${description}
                               </div>
                             </div>
                           </div>
                            `);

    });

    // configure slick lib carousel https://kenwheeler.github.io/slick/#go-get-it
    $('.carousel').slick({
        initialSlide: 0, // index of the initial slide to show
        autoplay: true, //enable/disable automatique slide
        autoplaySpeed: 2000, // automatique slide each 3seconds
        dots: true, // show dots bellow carouses
        arrows: false, // show/hide left and right arrows
        infinite: true, // go back to first element on end of scroll
        speed: 1000, // scroll during 1second
        slidesToShow: 1, // show 1 slide element at the time
        slidesToScroll: 1, // scroll by  1
        centerMode: false, // shows part of next and previous slides
        mobileFirst: true, // Responsive settings use mobile first calculation
        adaptiveHeight: true // animates when slide height changes
    });

});

///======================================================================================================================///






