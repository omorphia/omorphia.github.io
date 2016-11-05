spv = () ->
  w = $('.swiper-container').width()
  if w <= 425
    return 1
  if w <= 1024
    return 2
  return 3
$ ->
  mySwiper = new Swiper('.swiper-container',
    centerdSlides: true
    a11y: true
    speed: 600
    effect: 'coverflow'
    #slidesPerView: $('.swiper-container').width()/400
    slidesPerView: spv()
    spaceBetween: 0
    autoHeight: true
    paginationClickable: true
    autoplay: 4000
    keyboardControl: true
    coverflow: {
      slideShadows: false
    }
    loop: true
    pagination: '.swiper-pagination'
    nextButton: '.swiper-button-next'
    prevButton: '.swiper-button-prev')
