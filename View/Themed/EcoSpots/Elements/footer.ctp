<?php
$events = $this->requestAction([
    'plugin' => 'ecospots',
    'controller' => 'events',
    'action' => 'footerEvents'
]);
?>
<footer class="main-footer">
        
        <!--Widgets Section-->
        <div class="widgets-section">
            <div class="container">
                <div class="row">
                    <!--Big Column-->
                    <div class="big-column col-md-6 col-sm-12 col-xs-12">
                        <div class="row clearfix">
                            
                            <!--Footer Column-->
                            <div class="col-md-6 col-sm-6 col-xs-12">

                                <div class="footer-widget about-column">
                                    <figure class="footer-logo"><a href="index.html"><img src="images/logo/logo2.png" alt=""></a></figure>
                                    
                                    <div class="text"><p>When you give to us you know your donation is making a diffe. </p> </div>
                                    <ul class="contact-info">
                                        <li><span class="icon-signs"></span>22/121 Apple Street, New York, <br>NY 10012, USA</li>
                                        <li><span class="icon-phone-call"></span> Phone: +123-456-7890</li>
                                        <li><span class="icon-note"></span>Supportus@Eco greenteam.com</li>
                                    </ul>
                                </div>
                            </div>
                            <!--Footer Column-->
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <div class="footer-widget link-column">
                                    <div class="section-title">
                                        <h4>Quick Links</h4>
                                    </div>
                                    <div class="widget-content">
                                        
                                        <?php
                                            echo $this->Menus->menu('main',[
                                                'dropdown' => false,
                                                'menuClass' => 'list'
                                            ]);
                                        ?>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!--Big Column--> 
                    <div class="clearfix">
                        <div class="big-column col-md-6 col-sm-12 col-xs-12">
                            
                            <!--Footer Column-->
                     
                                <div class="footer-widget post-column">
                                    <div class="section-title">
                                        <h4>Upcoming Events</h4>
                                    </div>
                                    <div class="post-list">
                                        <?php foreach($events as $event):?>
                                            <div class="post">
                                                <div class="post-thumb"><a href="#"><img src="images/blog/thumb1.jpg" alt=""></a></div>
                                                <a href="#"><h5><?=$event['Event']['name']?></h5></a>
                                                <div class="post-info"><i class="fa fa-calendar"></i>  <?=$this->Eco->getHumanDate($event['Event']['date'])?></div>
                                            </div>
                                        <?php endforeach;?>
                                    </div>
                                    
                                </div>
                                            
                            
                        </div>
                    </div>
                    
                 </div>
             </div>
         </div>
    </footer>


<section class="footer-bottom">
    <div class="container">
        <div class="pull-left copy-text">
            <p><a href="#">Copyrights © 2017</a> All Rights Reserved. Powered by <a href="#"><?php echo Configure::read("Site.title")?>.</a></p>
            
        </div>
    </div>
</section>