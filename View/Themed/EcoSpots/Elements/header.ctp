<nav id="navbar" class="theme_menu stricky">
    <div class="container-fluid row">

        <div class="navbar-header navbar-left">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#mainNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="<?php echo $this->webroot?>" class="ecospots-logo-link">
                <?php
                    echo $this->HTML->image('logo.png',['class'=>'ecospots-logo']);
                ?>
            </a>       
        </div>
        <div class="collapse navbar-collapse navbar-right menuzord" id="mainNavbar">
            <?php echo $this->Menus->menu('main', array(
                            'dropdown' => true, 
                            'dropdownMenuClass' => 'dropdown',
                            'menuClass'=>'menuzord-menu navbar-nav'
                        )); 
            ?>
        </div>

    </div>
</nav>