<template>
    <Carousel
        v-model="value3"
        :autoplay="setting.autoplay"
        :autoplay-speed="setting.autoplaySpeed"
        :dots="setting.dots"
        :trigger="setting.trigger"
        :arrow="setting.arrow">
        <Carousel-item v-for="(hot,index) in hots" :key="index">
            <div class="demo-carousel">
                <div class="rec-frame">
                    <a href="#">
                        <img width="350" height="240" :src="hot.hotimg" alt="">
                    </a>
                    <div class="rec-word">
                        <h3 class="rec-title">{{hot.title}}</h3>
                        <p class="rec-intro">{{hot.intro}}</p>
                    </div>
                </div>
            </div>
        </Carousel-item>
    </Carousel>
</template>

<script>
export default {
   data () {
            return {
                value3: 0,
                setting: {
                    autoplay: false,
                    autoplaySpeed: 2000,
                    trigger: 'click',
                    dots:'none',
                    arrow: 'always'
                },
                hots:[
                    {
                        hotimg:'https://img2.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/d56ffec7f8c0022.jpg',
                        title:'抖森主演漫威新剧《洛基》预告',
                        intro:'本季共6集，6月11日Disney+上线！'
                    },
                    {
                      hotimg:'https://img3.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/15bccd10c56e35e.jpg',
                      title:'《速度与激情9》定档5月21日',
                      intro:'速激家族全员回归！火箭飞车惊喜亮相！'  
                    },
                    {
                        hotimg:'https://img1.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/c71c54953b609d8.jpg',
                        title:'汤老湿主演《毒液2》中字预告',
                        intro:'原班人马回归主演，9月24日北美上映！'
                    },
                    {
                        hotimg:'https://img2.doubanio.com/view/movie_gallery_frame_hot_rec/normal/public/1ffa8759bc8043f.jpg',
                         title:'《瑞克和莫蒂》第五季定档预告',
                         intro:'第五季将于6月20日播出！'
                    }
                    ],
            }
        },
}
</script>

<style>
.rec-frame{
    margin-top: 20px;
    width: 675px;
    height: 240px;
    white-space: normal;
}
.rec-word{
    background: #F9F9F9;
    position: relative;
    width: 325px;
    height: 240px;
    padding: 48px 24px 24px 24px;
    display: inline-block;
    vertical-align: top;
    letter-spacing: normal;
    word-spacing: normal;
}
.rec-title{
    font-weight: normal;
   font-size: 18px;
    color: #111;
    line-height: 35px;
    background: transparent;
}
.rec-intro{
    font-size: 13px;
    color: #999;
    line-height: 45px;
}
</style>