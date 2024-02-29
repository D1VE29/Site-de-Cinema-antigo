﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index-2.aspx.cs" Inherits="Site_de_Cinema.index_2" %>

<!DOCTYPE html>
<!--[if IE 7]>
<html class="ie ie7 no-js" lang="en-US">
<![endif]-->
<!--[if IE 8]>
<html class="ie ie8 no-js" lang="en-US">
<![endif]-->
<!--[if !(IE 7) | !(IE 8)  ]><!-->
<html lang="en" class="no-js">

<!-- index14:58-->
<head>
    <!-- Basic need -->
    <title>Cinema Tavares</title>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="">
    <link rel="profile" href="#">

    <!--Google Font-->
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
    <!-- Mobile specific meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="format-detection" content="telephone-no">

    <!-- CSS files -->
    <link rel="stylesheet" href="css/plugins.css">
    <link rel="stylesheet" href="css/style.css">
    <link href="Film-Review-Movie-Database/css/plugins.css" rel="stylesheet" />
    <link href="Film-Review-Movie-Database/css/style.css" rel="stylesheet" />
</head>
<body>
    <!--preloading-->

    <!--end of preloading-->
    <!--login form popup-->
    <div class="login-wrapper" id="login-content">
        <div class="login-content">
            <a href="#" class="close">x</a>
            <h3>Login</h3>
            <form id="form1" method="post" action="#" runat="server">
                <div class="row">
                    <label for="username">
                        Username:
                        <asp:TextBox ID="txtUserID" placeholder="User Id" class="form-control" runat="server" />
                    </label>
                    <asp:Label ID="lblerror" Text="" runat="server" />
                </div>
                <%--<div id="partedascompras" runat="server" class="row" onselectedindexchanged="ddlNames_SelectedIndexChanged" autopostback="True" appenddatabounditems="true">--%>
					<div class="row">
                        <label for="password">
                           Password:
                        <asp:TextBox ID="txtPassword" placeholder="Text" class="form-control" TextMode="Password" runat="server" />
                        </label>
                    </div>
                <%--</div>--%>
                <div class="row">
                    <asp:Button ID="botao" runat="server" Text="Login" type="submit" OnClick="botao_Click" />
                </div>
                <div class="row">
                    <div class="remember">
                        <div>
                            <input type="checkbox" name="remember" value="Remember me"><span>Lembrar Password</span>
                        </div>
                        <a href="#">Esqueceu a sua password?</a>
                    </div>
                </div>
            </form>
            <div class="row">
            </div>
        </div>
    </div>
    <!--end of login form popup-->
    <!--signup form popup-->
    <div class="login-wrapper" id="signup-content">
        <div class="login-content">
            <a href="#" class="close">x</a>
            <h3>Comprar Bilhetes</h3>
            <form id="form2" method="post" action="#" runat="server">
                <div class="row">
                    <label for="username-2">
                        Nome e apelido:
						<input type="text" name="username" id="username-2" placeholder="Nome Apelido (desta forma)" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
                    </label>
                </div>

                <div class="row">
                    <label for="email-2">
                        O seu filme:
						<asp:DropDownList ID="escolherfilmes" runat="server" OnSelectedIndexChanged="escolherfilmes_SelectedIndexChanged" AutoPostBack="True" AppendDataBoundItems="true"></asp:DropDownList>
                        <!--<input type="password" name="email" id="email-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />-->
                    </label>
                </div>
                <div class="row">
                    <label for="password-2">
                        O/s seu/s lugar/es:
						<input type="text" name="lugar" id="lugarchooser" placeholder="B5 (exemplo de como escolher lugar)" pattern="^[a-zA-Z][a-zA-Z0-9-_\.]{8,20}$" required="required" />
                    </label>
                </div>
                <div class="row">
                    <label for="repassword-2">
                        Insira a Palavra Passe da sua conta:
						<input type="password" name="password" id="repassword-2" placeholder="" pattern="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$" required="required" />
                    </label>
                </div>
                <div class="row">
                    <button type="submit">Confirmar Compra</button>
                </div>
            </form>
        </div>
    </div>
    <!--end of signup form popup-->

    <!-- BEGIN | Header -->
    <header class="ht-header">
        <div class="container">
            <nav class="navbar navbar-default navbar-custom">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header logo">
                    <div class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    </div>
                    <a href="index-2.aspx">
                        <img class="logo" src="images/logo1.png" alt="" width="119" height="58"></a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse flex-parent" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav flex-child-menu menu-left">
                        <li class="hidden">
                            <a href="#page-top"></a>
                        </li>
                        <li class="dropdown first">
                            <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown">Início <i class="fa fa-angle-down" aria-hidden="true"></i>
                            </a>
                        </li>
                        <li class="dropdown first">

                            <ul class="dropdown-menu level1">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Movie grid<i class="ion-ios-arrow-forward"></i></a>
                                    <ul class="dropdown-menu level2">
                                        <li><a href="moviegrid.html">Movie grid</a></li>
                                        <li><a href="moviegridfw.html">movie grid full width</a></li>
                                    </ul>
                                </li>
                                <li><a href="movielist.html">Movie list</a></li>
                                <li><a href="moviesingle.html">Movie single</a></li>
                                <li class="it-last"><a href="seriessingle.html">Series single</a></li>
                            </ul>
                        </li>
                        <li class="dropdown first">
                            <ul class="dropdown-menu level1">
                                <li><a href="celebritygrid01.html">celebrity grid 01</a></li>
                                <li><a href="celebritygrid02.html">celebrity grid 02 </a></li>
                                <li><a href="celebritylist.html">celebrity list</a></li>
                                <li class="it-last"><a href="celebritysingle.html">celebrity single</a></li>
                            </ul>
                        </li>
                        <li class="dropdown first">
                            <ul class="dropdown-menu level1">
                                <li><a href="bloglist.html">blog List</a></li>
                                <li><a href="bloggrid.html">blog Grid</a></li>
                                <li class="it-last"><a href="blogdetail.html">blog Detail</a></li>
                            </ul>
                        </li>
                        <li class="dropdown first">
                            <ul class="dropdown-menu level1">
                                <li><a href="userfavoritegrid.html">user favorite grid</a></li>
                                <li><a href="userfavoritelist.html">user favorite list</a></li>
                                <li><a href="userprofile.html">user profile</a></li>
                                <li class="it-last"><a href="userrate.html">user rate</a></li>
                            </ul>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav flex-child-menu menu-right">
                        <li class="dropdown first">
                            <a class="btn btn-default dropdown-toggle lv1" data-toggle="dropdown" data-hover="dropdown">Páginas <i class="fa fa-angle-down" aria-hidden="true"></i>
                            </a>
                            <ul class="dropdown-menu level1">
                                <li><a href="landing.html">Início</a></li>
                                <li class="it-last"><a href="Admin.aspx">Página Administrador</a></li>
                            </ul>
                        </li>
                        <li><a href="#">Ajuda</a></li>
                        <li class="loginLink"><a href="#">LOG In</a></li>
                        <li class="btn"><a href="index.html">Comprar Bilhetes</a></li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>

            <!-- top search form -->
            <div class="top-search">
                <select>
                    <option value="united">Filmes Recentes</option>
                    <option value="saab">Outros</option>
                </select>
                <input type="text" placeholder="Procurar por filmes, séries ou celebridades que procura">
            </div>
        </div>
    </header>
    <!-- END | Header -->

    <div class="slider movie-items">
        <div class="container">
            <div class="row">

                <div id="filmesdiogo" runat="server" class="slick-multiItemSlider">
                </div>
            </div>
        </div>
    </div>
    </div>
	<div class="movie-items">
        <div class="container">
            <div class="row ipad-width">
                <div class="col-md-8">
                    <%--<div class="title-hd">
						<h2>Em exibição</h2>
						<a href="#" class="viewall">Ver todos<i class="ion-ios-arrow-right"></i></a>
					</div>--%>
                    <div class="tabs">
                        <ul class="tab-links">
                            <li class="active"><a href="#tab1">Popular</a></li>
                        </ul>
                        <div runat="server" class="tab-content">
                            <div id="tab1" class="tab active">
                                <div class="row">
                                    <div class="slick-multiItem" id="sliderdebaixo" runat="server">
                                    </div>
                                </div>
                            </div>
                            <div id="tab2" class="tab">
                                <div class="row">
                                    <div class="slick-multiItem">
                                        <div class="slide-it">
                                            <div id="tab22" class="tab active">
                                                <div class="row">
                                                    <div class="slick-multiItem">
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Interstellar</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">The revenant</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Die hard</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">The walk</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Interstellar</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">The revenant</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Die hard</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">The walk</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Interstellar</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">The revenant</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="tab23" class="tab">
                                                <div class="row">
                                                    <div class="slick-multiItem">
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item1.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Interstellar</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item2.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">The revenant</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Die hard</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item4.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">The walk</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Interstellar</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">The revenant</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Die hard</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">The walk</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Die hard</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="tab24" class="tab">
                                                <div class="row">
                                                    <div class="slick-multiItem">
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item5.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Interstellar</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item6.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">The revenant</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item7.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Die hard</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item8.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">The walk</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="slide-it">
                                                            <div class="movie-item">
                                                                <div class="mv-img">
                                                                    <img src="images/uploads/mv-item3.jpg" alt="" width="185" height="284">
                                                                </div>
                                                                <div class="hvr-inner">
                                                                    <a href="moviesingle.html">Read more <i class="ion-android-arrow-dropright"></i></a>
                                                                </div>
                                                                <div class="title-in">
                                                                    <h6><a href="#">Die hard</a></h6>
                                                                    <p><i class="ion-android-star"></i><span>7.4</span> /10</p>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="sidebar">
                                        <div class="ads">
                                            <img src="images/uploads/ads1.png" alt="" width="336" height="296">
                                        </div>
                                        <div class="celebrities">
                                            <h4 class="sb-title">Celebridades do Momento</h4>
                                            <div class="celeb-item">
                                                <a href="#">
                                                    <img src="images/uploads/ava1.jpg" alt="" width="70" height="70"></a>
                                                <div class="celeb-author">
                                                    <h6><a href="#">Samuel N. Jack</a></h6>
                                                    <span>Actor</span>
                                                </div>
                                            </div>
                                            <div class="celeb-item">
                                                <a href="#">
                                                    <img src="images/uploads/ava2.jpg" alt="" width="70" height="70"></a>
                                                <div class="celeb-author">
                                                    <h6><a href="#">Benjamin Carroll</a></h6>
                                                    <span>Actor</span>
                                                </div>
                                            </div>
                                            <div class="celeb-item">
                                                <a href="#">
                                                    <img src="images/uploads/ava3.jpg" alt="" width="70" height="70"></a>
                                                <div class="celeb-author">
                                                    <h6><a href="#">Beverly Griffin</a></h6>
                                                    <span>Actor</span>
                                                </div>
                                            </div>
                                            <div class="celeb-item">
                                                <a href="#">
                                                    <img src="images/uploads/ava4.jpg" alt="" width="70" height="70"></a>
                                                <div class="celeb-author">
                                                    <h6><a href="#">Justin Weaver</a></h6>
                                                    <span>Actor</span>
                                                </div>
                                            </div>
                                            <a href="#" class="btn">Ver todas as celebridades<i class="ion-ios-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="trailers">
                        <div class="container">
                            <div class="row ipad-width">
                                <div class="col-md-12">
                                    <div class="title-hd">
                                        <%--<h2>Nos cinemas</h2>--%>
                                        <%--<a href="#" class="viewall">Ver todos<i class="ion-ios-arrow-right"></i></a>--%>
                                    </div>
                                    <div class="videos">
                                        <div class="slider-for-2 video-ft">
                                            <div>
                                                <iframe class="item-video" src="#" data-src="https://www.youtube.com/embed/YyAuFiIv-V4"></iframe>
                                            </div>
                                            <div>
                                                <iframe class="item-video" src="#" data-src="https://www.youtube.com/embed/YyAuFiIv-V4"></iframe>
                                            </div>
                                            <div>
                                                <iframe class="item-video" src="#" data-src="https://www.youtube.com/embed/YyAuFiIv-V4"></iframe>
                                            </div>
                                            <div>
                                                <iframe class="item-video" src="#" data-src="https://www.youtube.com/embed/YyAuFiIv-V4"></iframe>
                                            </div>
                                            <div>
                                                <iframe class="item-video" src="#" data-src="https://www.youtube.com/embed/YyAuFiIv-V4"></iframe>
                                            </div>
                                            <div>
                                                <iframe class="item-video" src="#" data-src="https://www.youtube.com/embed/YyAuFiIv-V4"></iframe>
                                            </div>


                                        </div>
                                        <div class="slider-nav-2 thumb-ft">
                                            <div class="item">
                                                <div class="trailer-img">
                                                    <img src="images/uploads/trailer7.jpg" alt="photo by Barn Images" width="4096" height="2737">
                                                </div>
                                                <div class="trailer-infor">
                                                    <h4 class="desc">Wonder Woman</h4>
                                                    <p>2:30</p>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="trailer-img">
                                                    <img src="images/uploads/trailer2.jpg" alt="photo by Barn Images" width="350" height="200">
                                                </div>
                                                <div class="trailer-infor">
                                                    <h4 class="desc">Oblivion: Official Teaser Trailer</h4>
                                                    <p>2:37</p>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="trailer-img">
                                                    <img src="images/uploads/trailer6.jpg" alt="photo by Joshua Earle">
                                                </div>
                                                <div class="trailer-infor">
                                                    <h4 class="desc">Exclusive Interview:  Skull Island</h4>
                                                    <p>2:44</p>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="trailer-img">
                                                    <img src="images/uploads/trailer3.png" alt="photo by Alexander Dimitrov" width="100" height="56">
                                                </div>
                                                <div class="trailer-infor">
                                                    <h4 class="desc">Logan: Director James Mangold Interview</h4>
                                                    <p>2:43</p>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="trailer-img">
                                                    <img src="images/uploads/trailer4.png" alt="photo by Wojciech Szaturski" width="100" height="56">
                                                </div>
                                                <div class="trailer-infor">
                                                    <h4 class="desc">Beauty and the Beast: Official Teaser Trailer 2</h4>
                                                    <p>2: 32</p>
                                                </div>
                                            </div>
                                            <div class="item">
                                                <div class="trailer-img">
                                                    <img src="images/uploads/trailer5.jpg" alt="photo by Wojciech Szaturski" width="360" height="189">
                                                </div>
                                                <div class="trailer-infor">
                                                    <h4 class="desc">Fast&Furious 8</h4>
                                                    <p>3:11</p>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- latest new v1 section-->
                    <div class="latestnew">
                        <div class="container">
                            <div class="row ipad-width">
                                <div class="col-md-8">
                                    <div class="ads">
                                        <img src="images/uploads/ads2.png" alt="" width="728" height="106">
                                    </div>
                                    <div class="title-hd">
                                        <h2>Últimas notícias</h2>
                                    </div>
                                    <div class="tabs">
                                        <ul class="tab-links-3">
                                            <li class="active"><a href="#tab31">#Movies </a></li>
                                            <li><a href="#tab32">#TV Shows </a></li>
                                            <li><a href="#tab33"># Celebs</a></li>
                                        </ul>
                                        <div class="tab-content">
                                            <div id="tab31" class="tab active">
                                                <div class="row">
                                                    <div class="blog-item-style-1">
                                                        <img src="images/uploads/blog-it1.jpg" alt="" width="170" height="250">
                                                        <div class="blog-it-infor">
                                                            <h3><a href="#">Brie Larson to play first female white house candidate Victoria Woodull in Amazon film</a></h3>
                                                            <span class="time">13 hours ago</span>
                                                            <p>Exclusive: <span>Amazon Studios </span>has acquired Victoria Woodhull, with Oscar winning Room star <span>Brie Larson</span> polsed to produce, and play the first female candidate for the presidency of the United States. Amazon bought it in a pitch package deal. <span>Ben Kopit</span>, who wrote the Warner Bros film <span>Libertine</span> that has...</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="tab32" class="tab">
                                                <div class="row">
                                                    <div class="blog-item-style-1">
                                                        <img src="images/uploads/blog-it2.jpg" alt="" width="170" height="250">
                                                        <div class="blog-it-infor">
                                                            <h3><a href="#">Tab 2</a></h3>
                                                            <span class="time">13 hours ago</span>
                                                            <p>Exclusive: <span>Amazon Studios </span>has acquired Victoria Woodhull, with Oscar winning Room star <span>Brie Larson</span> polsed to produce, and play the first female candidate for the presidency of the United States. Amazon bought it in a pitch package deal. <span>Ben Kopit</span>, who wrote the Warner Bros film <span>Libertine</span> that has...</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div id="tab33" class="tab">
                                                <div class="row">
                                                    <div class="blog-item-style-1">
                                                        <img src="images/uploads/blog-it1.jpg" alt="" width="170" height="250">
                                                        <div class="blog-it-infor">
                                                            <h3><a href="#">Tab 3</a></h3>
                                                            <span class="time">13 hours ago</span>
                                                            <p>Exclusive: <span>Amazon Studios </span>has acquired Victoria Woodhull, with Oscar winning Room star <span>Brie Larson</span> polsed to produce, and play the first female candidate for the presidency of the United States. Amazon bought it in a pitch package deal. <span>Ben Kopit</span>, who wrote the Warner Bros film <span>Libertine</span> that has...</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="morenew">
                                        <div class="title-hd">
                                            <h3>Notícias mais antigas</h3>
                                            <a href="#" class="viewall">Ver todas as notícias<i class="ion-ios-arrow-right"></i></a>
                                        </div>
                                        <div class="more-items">
                                            <div class="left">
                                                <div class="more-it">
                                                    <h6><a href="#">Michael Shannon Frontrunner to play Cable in “Deadpool 2”</a></h6>
                                                    <span class="time">13 hours ago</span>
                                                </div>
                                                <div class="more-it">
                                                    <h6><a href="#">French cannibal horror “Raw” inspires L.A. theater to hand out “Barf Bags”</a></h6>

                                                    <span class="time">13 hours ago</span>
                                                </div>
                                            </div>
                                            <div class="right">
                                                <div class="more-it">
                                                    <h6><a href="#">Laura Dern in talks to join Justin Kelly’s biopic “JT Leroy”</a></h6>
                                                    <span class="time">13 hours ago</span>
                                                </div>
                                                <div class="more-it">
                                                    <h6><a href="#">China punishes more than 300 cinemas for box office cheating</a></h6>
                                                    <span class="time">13 hours ago</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="sidebar">
                                        <div class="sb-facebook sb-it">
                                            <h4 class="sb-title">Encontre-nos no Facebook</h4>
                                            <iframe src="#" data-src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Ftemplatespoint.net%2F%3Ffref%3Dts&tabs=timeline&width=300&height=315px&small_header=true&adapt_container_width=false&hide_cover=false&show_facepile=true&appId" width="300" height="315" style="border: none; overflow: hidden"></iframe>
                                        </div>
                                        <div class="sb-twitter sb-it">
                                            <h4 class="sb-title">Tweet para nós</h4>
                                            <div class="slick-tw">
                                                <div class="tweet item" id="">
                                                    <!-- Put your twiter id here -->
                                                </div>
                                                <div class="tweet item" id="">
                                                    <!-- Put your 2nd twiter account id here -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--end of latest new v1 section-->
                    <!-- footer section-->
                    <footer class="ht-footer">
                        <div class="container">
                            <div class="flex-parent-ft">
                                <div class="flex-child-ft item1">
                                    <a href="index-2.html">
                                        <img class="logo" src="images/logo1.png" alt=""></a>
                                    <p>
                                        Tv. Escola Araújo 15<br>
                                        1169-148 Lisboa
                                    </p>
                                    <p>Ligue-nos: <a href="#">+351213110990</a></p>
                                </div>
                                <div class="flex-child-ft item2">
                                    <h4>Recursos</h4>
                                    <ul>
                                        <li><a href="#">Sobre nós</a></li>
                                        <li><a href="#">Blockbuster</a></li>
                                        <li><a href="#">Contacte-nos</a></li>
                                        <li><a href="#">Forums</a></li>
                                        <li><a href="#">Blogs</a></li>
                                        <li><a href="#">Centro de ajuda</a></li>
                                    </ul>
                                </div>
                                <div class="flex-child-ft item3">
                                    <h4>Parte jurídica</h4>
                                    <ul>
                                        <li><a href="#">Termos de utilização</a></li>
                                        <li><a href="#">Política de Privacidade</a></li>
                                        <li><a href="#">Segurança</a></li>
                                    </ul>
                                </div>
                                <div class="flex-child-ft item4">
                                    <h4>Conta</h4>
                                    <ul>
                                        <li><a href="#">A minha conta</a></li>
                                        <li><a href="#">Ver depois</a></li>
                                        <li><a href="#">Coleções</a></li>
                                        <li><a href="#">Guia do Utilizador</a></li>
                                    </ul>
                                </div>
                                <div class="flex-child-ft item5">
                                    <h4>Newsletter</h4>
                                    <p>Subscreva a nossa newsletter
                                        <br>
                                        para receber notícias mais recentes.</p>
                                    <form action="#">
                                        <input type="text" placeholder="Insira o seu email...">
                                    </form>
                                    <a href="#" class="btn">Subscrever agora<i class="ion-ios-arrow-forward"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="backtotop">
                            <p><a href="#" id="back-to-top">Voltar ao topo da página<i class="ion-ios-arrow-thin-up"></i></a></p>
                        </div>
                    </footer>
                    <!-- end of footer section-->

                    <script src="js/jquery.js"></script>
                    <script src="js/plugins.js"></script>
                    <script src="js/plugins2.js"></script>
                    <script src="js/custom.js"></script>
                    <script src="Film-Review-Movie-Database/js/custom.js"></script>
                    <script src="Film-Review-Movie-Database/js/jquery.js"></script>
                    <script src="Film-Review-Movie-Database/js/plugins.js"></script>
                    <script src="Film-Review-Movie-Database/js/plugins2.js"></script>
</body>

<!-- index14:58-->
</html>
