<section class="theme_menu stricky">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="main-logo">
                    <a href="<?php echo $this->webroot?>">
                        <?php
                            //echo $this->HTML->image('logo/logo.png');
                        ?>
                    </a>
                </div>
            </div>
            <div class="col-md-9 menu-column">
                <nav class="menuzord" id="main_menu">
                    <?php 
                        echo $this->Menus->menu('main',[
                            'dropdown' => true,
                            'dropdownMenuClass' => 'dropdown',
                            'menuClass' => 'menuzord-menu'
                        ]);
                    ?>
                </nav> 
            </div>

        </div>
   </div>
</section>