<template>
<div class="page">
    <Carousel
        v-model="value3"
        :autoplay="setting.autoplay"
        :autoplay-speed="setting.autoplaySpeed"
        :dots="setting.dots"
        :radius-dot="setting.radiusDot"
        :trigger="setting.trigger"
        :arrow="setting.arrow">
        <CarouselItem>
            <div class="demo-carousel">
                <div class="movie-item">
                    <ul class="carousel-con">
                        <li class="carousel-item">
                            <img src="https://img9.doubanio.com/view/photo/s_ratio_poster/public/p2643245925.jpg" alt="">
                            <p>人之怒</p>
                            <p>9.1</p>
                            <span></span>
                        </li>
                        <li class="carousel-item">
                            <img src="../assets/images/people.jpg" alt="">
                            <p>人之怒</p>
                            <p>9.1</p>
                            <span></span>
                        </li>
                        <li class="carousel-item">
                            <img src="../assets/images/people.jpg" alt="">
                            <p>人之怒</p>
                            <p>9.1</p>
                            <span></span>
                        </li>
                        <li class="carousel-item">
                            <img src="../assets/images/people.jpg" alt="">
                            <p>人之怒</p>
                            <p>9.1</p>
                            <span></span>
                        </li>
                        <li class="carousel-item">
                            <img src="../assets/images/people.jpg" alt="">
                            <p>人之怒</p>
                            <p>9.1</p>
                            <span></span>
                        </li>
                    </ul>
                </div>
            </div>
        </CarouselItem>
        <CarouselItem>
            <div class="demo-carousel">2</div>
        </CarouselItem>
        <CarouselItem>
            <div class="demo-carousel">3</div>
        </CarouselItem>
        <CarouselItem>
            <div class="demo-carousel">4</div>
        </CarouselItem>
    </Carousel>
    </div>
</template>
<script>
    export default {
        data () {
            return {
                value3: 0,
                setting: {
                    autoplay: false,
                    autoplaySpeed: 2000,
                    dots: 'outside',
                    radiusDot: true,
                    trigger: 'click',
                    arrow: 'always'
                }
            }
        },
    }
</script>
<style>
.page{
    float: left;
    width: 675px;
    height: 270px;
    border: 1px solid #000;
}
.carousel-item{
    float: left;
    margin-right: 25px;
    margin-top: 20px;
    width: 115px;
    height: 270px;
    overflow: hidden;
    margin-bottom: 12px;
}
.carousel-item img{
    width: 115px;
}
</style>