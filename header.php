<header>
        <nav class="navbar navbar-expand-lg ">
            <div class="container">
                <a class="navbar-brand gradient-text font-weight-bold" href="index.php?hal=home">Salsa's</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <i class="fa fa-bars" data-theme="dark"></i>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item gradient-hover active">
                            <a class="nav-link" href="index.php?hal=home">Home <span class="sr-only">(current)</span></a>
                        </li>
                        <li class="nav-item gradient-hover active">
                            <a class="nav-link" href="index.php?hal=about">About</a>
                        </li>
                        <li class="nav-item dropdown gradient-hover active">
                            <a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Table Info
                            </a>
                            <div class="dropdown-menu" aria-labelledby="servicesDropdown">
                                <a class="dropdown-item" href="index.php?hal=person_list">Info Person</a>
                                <a class="dropdown-item" href="index.php?hal=agama_list">Info Agama</a>
                            </div>
                        </li>
                        <li class="nav-item gradient-hover active">
                            <a class="nav-link" href="index.php?hal=person_form">Contact</a>
                        </li>
                        <div class="custom-control custom-switch mt-2 ">
                            <input type="checkbox" class="custom-control-input box-shadow" id="darkSwitch" />
                            <label class="custom-control-label" for="darkSwitch">Dark Mode</label>
                        </div>
                        &nbsp;
                        <?php
                            if(!isset($_SESSION['MEMBER'])){ //----belum login------
                        ?>
                        <li class="nav-item">
                            <a class="nav-link" href="login.php">Login</a>
                        </li>
                        <?php
                        }
                        else{ //---------user sudah login dan terotentikasi---------------
                        ?>
                        <li class="nav-item dropdown gradient-hover active">
                            <a class="nav-link dropdown-toggle" href="#" id="servicesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-user"></i> <?= $_SESSION['MEMBER']['username'] ?> - <?= $_SESSION['MEMBER']['role'] ?>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="servicesDropdown">
                                <a class="dropdown-item" href="#">Profile</a>
                                <?php
                                if(isset($_SESSION['MEMBER']) && $_SESSION['MEMBER']['role'] != 'staff'){
                                ?>
                                <a class="dropdown-item" href="#">Kelola User</a>
                                <?php }?>
                                <hr class="dropdown-divider">
                                <a class="dropdown-item" href="logout.php">Logout</a></li>
                            </div>
                        </li>
                        <?php }?>
                </div>
            </div>
        </nav>
    </header>