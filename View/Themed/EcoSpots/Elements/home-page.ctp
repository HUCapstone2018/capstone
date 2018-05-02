<!--Start rev slider wrapper-->     
<section class="rev_slider_wrapper">
    <div id="slider1" class="rev_slider"  data-version="5.0">
        <ul> 
            <?php foreach($node['LinkedAssets']['DefaultAsset'] as $asset):
                $img = str_replace('\\', '/', $asset['path']);
                $img = str_replace('//', '/', $img);
            ?>
                <li data-transition="fade">
                    <img src="<?=$this->webroot.$img?>"  alt="" width="1920" height="888" data-bgposition="top center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="1" >
                </li>
            <?php endforeach;?>
        </ul>
    </div>
</section>
<!--End rev slider wrapper--> 


<section class="service sec-padd3">
    <div class="container">
        <div class="section-title center">
            <h2>In EcoSpots you can know all about <span class="thm-color"></span></h2>
        </div>
        <div class="row">
            <a class="col-md-4 col-sm-6 col-x-12 green-link" href="<?=$this->HTML->url('/spots')?>">
                <div class="service-item center">
                    <div class="icon-box">
                        <i class="fa fa-map-signs"></i>
                    </div>
                    <h4>Interesting Spots</h4>
                    <p>Explore hidden natural locations in Lebanon</p>
                </div>
            </a>
            <a class="col-md-4 col-sm-6 col-x-12 green-link" href="<?=$this->HTML->url('/events')?>">
                <div class="service-item center">
                    <div class="icon-box">
                       <i class="fa fa-flag"></i>
                    </div>
                    <h4>Events</h4>
                    <p>Check and participate in our daily events</p>
                </div>
            </a>
            <a class="col-md-4 col-sm-6 col-x-12 green-link" href="<?=$this->HTML->url('/blogs green-link')?>">
                <div class="service-item center">
                    <div class="icon-box">
                        <i class="fa fa-laptop"></i>
                    </div>
                    <h4>Our Blog</h4>
                    <p>Read credible environmental news</p>
                </div>
            </a>
            
        </div>
    </div>
</section>


<section class="fact-counter style-2 sec-padd" style="background-image: url(<?=$this->HTML->url('../theme/EcoSpots/img/background/cover.jpg')?>);">
    <div class="container">
        <div class="section-title center">
            <h2>Some Interesting Facts</h2>
        </div>
        <div class="row clearfix">
            <div class="counter-outer clearfix">
                <!--Column-->
                <article class="column counter-column col-md-3 col-sm-6 col-xs-12 wow fadeIn animated" data-wow-duration="0ms">
                    <div class="item">
                        <div class="icon"><i class="icon-heart2"></i></div>
                        <div class="count-outer"><span class="count-text" data-speed="3000" data-stop="<?=$facts['spots']?>">0</span>+</div>
                        <h4 class="counter-title">Spots</h4>
                    </div>
                        
                </article>
                
                <!--Column-->
                <article class="column counter-column col-md-3 col-sm-6 col-xs-12 wow fadeIn animated" data-wow-duration="0ms">
                    <div class="item">
                        <div class="icon"><i class="icon-money"></i></div>
                        <div class="count-outer">$<span class="count-text" data-speed="3000" data-stop="<?=$facts['funds']?>">0</span>+</div>
                        <h4 class="counter-title">Environmental Funds</h4>
                    </div>
                </article>
                
                <!--Column-->
                <article class="column counter-column col-md-3 col-sm-6 col-xs-12 wow fadeIn animated" data-wow-duration="0ms">
                    <div class="item">
                        <div class="icon"><i class="icon-people3"></i></div>
                        <div class="count-outer"><span class="count-text" data-speed="3000" data-stop="<?=$facts['environmentalists']?>">0</span></div>
                        <h4 class="counter-title">Environmentalists</h4>
                    </div>
                </article>
                
                <!--Column-->
                <article class="column counter-column col-md-3 col-sm-6 col-xs-12 wow fadeIn animated" data-wow-duration="0ms">
                    <div class="item">
                        <div class="icon"><i class="icon-animals"></i></div>
                        <div class="count-outer"><span class="count-text" data-speed="3000" data-stop="<?=$facts['blogs']?>">0</span>+</div>
                        <h4 class="counter-title">Evnironmental Blogs</h4>
                    </div>
                </article>
            </div>
        </div>
    </div>
</section>


<section class="urgent-cause2 sec-padd">
    <div class="container">
        <div class="section-title">
            <h2>Interesting spots</h2>
            <p>Explore what you can do in these locations</p>
        </div>
        <div class="cause-carousel">
            <?php foreach($spots as $spot) : ?>
                <div class="item clearfix">
                    <figure class="img-box">
                        <?php
                            $image = !empty($spot['Spot']['photo']) ? 'uploads/'.$spot['Spot']['photo'] : 'uploads/no-image.jpg';
                            echo $this->Image->crop($image,400,300);
                        ?>
                        <div class="overlay"><div class="inner-box"><div class="content-box">
                            <a class="thm-btn style-2 donate-box-btn" href="<?=$this->HTML->url('/spot/'.$spot['Spot']['slug'])?>">
                                Explore Spot
                            </a>
                        </div></div></div>
                    </figure>
                    <a class = "full-width text-center" href="<?=$this->HTML->url('/spot/'.$spot['Spot']['slug'])?>"><h4 class="title"><?=$spot['Spot']['name']?></h4>
                        <div class="content">
                            <div class="text center">
                                <p><?=$spot['Spot']['excerpt']?></p>
                            </div>   
                        </div>   
                    </a>                     
                </div>
            <?php endforeach;?>
            
        </div>
    </div>
</section>

<section class="event-style1" style="background-image: url(<?=$this->HTML->url('../theme/EcoSpots/img/background/events.jpg')?>)";>
    <div class="container">
        <div class="row">
            <div class="col-md-9 col-sm-10 col-xs-12">
                <div class="section-title">
                    <h2>UpComing Events</h2>
                </div>
            </div>
            <div class="col-md-3 col-sm-2 col-xs-12">
                <a href="<?=$this->HTML->url('/events')?>" class="thm-btn style-2 float_right">All Events</a>
            </div>
        </div>
        <div class="row">
            <article class="col-md-6 col-sm-12 col-xs-12">
                <?php if(count($events) > 0) : $event = $events[0];?>
                    <div class="item style-1">
                        <div class="img-column">
                            <figure class="img-holder">
                                <?php
                                    $image = !empty($event['Event']['photo']) ? '../uploads/'.$event['Event']['photo'] : 'blog/11.jpg';
                                ?>
                                <a href="<?php echo $this->HTML->url('/event/'.$event['Event']['slug']);?>"><?php echo $this->HTML->image($image);?></a>
                                <div class="date"><?php echo $this->Eco->getHumanDate($event['Event']['date']);?></div>
                            </figure>
                        </div>
                        <div class="text-column">
                            <div class="lower-content">
                                <a href="<?php echo $this->HTML->url('/event/'.$event['Event']['slug']);?>">
                                    <h4>
                                        <?php echo $event['Event']['name'];?>
                                    </h4>
                                </a>
                                <div class="text">
                                    <p>
                                        <?php echo $this->Eco->excerpt($event['Event']['excerpt']);?>  
                                    </p>               
                                </div>                            
                            </div>
                        </div>      
                    </div>
                <?php unset($events[0]); endif;?>
            </article>
            <article class="col-md-6 col-sm-12 col-xs-12">
                <?php foreach($events as $event):?>
                <div class="item style-2">
                    <div class="clearfix">
                        <div class="img-column">
                            <figure class="img-holder">
                                <?php
                                    $image = !empty($event['Event']['photo']) ? '../uploads/'.$event['Event']['photo'] : 'blog/11.jpg';
                                ?>
                                <a href="<?php echo $this->HTML->url('/event/'.$event['Event']['slug']);?>"><?php echo $this->HTML->image($image);?></a>
                                <div class="date"><?php echo $this->Eco->getHumanDate($event['Event']['date']);?></div>
                            </figure>
                        </div>
                        <div class="text-column">
                            <div class="lower-content">
                                <a href="<?php echo $this->HTML->url('/event/'.$event['Event']['slug']);?>">
                                    <h4>
                                        <?php echo $event['Event']['name'];?>
                                    </h4>
                                </a>
                                <div class="text">
                                    <p>
                                        <?php echo $this->Eco->excerpt($event['Event']['excerpt']);?>  
                                    </p>               
                                </div>                            
                            </div>
                        </div> 
                    </div> 
                </div>
                <?php endforeach;?>
            </article>
        </div>
    </div>
</section>

<section class="blog-section sec-padd2">
    <div class="container">
        <div class="section-title center">
            <h2>latest news</h2>
        </div>
        <div class="row">
            <?php foreach($blogs as $blog): ?>
                <article class="col-md-3 col-sm-6 col-xs-12">
                    <div class="default-blog-news wow fadeInUp animated animated" style="visibility: visible; animation-name: fadeInUp;">
                        <figure class="img-holder">
                            <a href="<?php echo $this->HTML->url('/blog/'.$blog['Blog']['slug']);?>">
                                <?php
                                    $image = !empty($blog['Blog']['photo']) ? 'uploads/'.$blog['Blog']['photo'] : 'uploads/no-image.jpg';
                                    echo $this->Image->crop($image,400,300);   
                                ?>
                            </a>
                            <div class="date"><?php echo $this->Eco->getHumanDate($blog['Blog']['created']);?></div>
                        </figure>
                        <a class="full-width" href="<?php echo $this->HTML->url('/blog/'.$blog['Blog']['slug']);?>">
                            <h4 class="title"><?php echo $blog['Blog']['name'];?></h4>
                            <div class="lower-content">
                               <div class="post-meta">By <?php echo $blog['Blog']['author'];?></div>
                                    <div class="text">
                                        <?php echo $this->Eco->excerpt($blog['Blog']['excerpt']);?>               
                                    </div>                        
                            </div>
                        </a>
                    </div>
                </article>
            <?php endforeach;?>            
        </div>
    </div>
</section>

<div class="border-bottom"></div>