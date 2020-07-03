@extends('layouts.website.website')
@section('content')
      <!-- Start of Search Wrapper -->
      <div class="search-area-wrapper">
        <div class="search-area container">
                <h3 class="search-header">Have a Question?</h3>
                <p class="search-tag-line">If you have any question you can ask below or enter what you are looking for!</p>

                <form id="search-form" class="search-form clearfix" method="get" action="#" autocomplete="off">
                        <input class="search-term required" type="text" id="s" name="s" placeholder="Type your search terms here" title="* Please enter a search term!" />
                        <input class="search-btn" type="submit" value="Search" />
                        <div id="search-error-container"></div>
                </form>
        </div>
</div>
<!-- End of Search Wrapper -->

<!-- Start of Page Container -->
<div class="page-container">
        <div class="container">
                <div class="row">

                        <!-- start of page content -->
                        <div class="span8 page-content">

                                <!-- Basic Home Page Template -->
                                <div class="row separator">
                                        <section class="span4 articles-list">
                                                <h3>Selected content</h3>
                                                <ul class="articles">
                                                         <li class="article-entry standard">
                                                                <h4><a href="single.html">Website building foundation and advanced training </a></h4>
                                                                <span class="article-meta">25 Feb, 2020 in <a href="single.html" title="View all posts in IT synthesis">IT synthesis</a></span>
                                                                <span class="like-count">77</span>
                                                        </li>
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">PHP advanced training </a></h4>
                                                                <span class="article-meta">24 Feb, 2020 in <a href="single.html" title="View all posts in IT synthesis">IT synthesis</a></span>
                                                                <span class="like-count">80</span>
                                                        </li>
                                                        <li class="article-entry video">
                                                                <h4><a href="single.html">Influenza virus differentiation  </a></h4>
                                                                <span class="article-meta">10 Dec, 2019 in <a href="single.html" title="View all posts in Health-Science">Health-Science</a></span>
                                                                <span class="like-count">76</span>
                                                        </li>
                                                        <li class="article-entry image">
                                                                <h4><a href="single.html">Fundamentals of Engineering </a></h4>
                                                                <span class="article-meta">10 Jul, 2017 in <a href="single.html" title="View all posts in New-engry">New-engry</a></span>
                                                                <span class="like-count">120</span>
                                                        </li>
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">Food health classification </a></h4>
                                                                <span class="article-meta">17 Jun, 2018 in <a href="single.html" title="View all posts in Food and Fibre">Food and Fibre</a></span>
                                                                <span class="like-count">68</span>
                                                        </li>
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">Advanced mechanical dynamics </a></h4>
                                                                <span class="article-meta">21 Feb, 2013 in <a href="single.html" title="View all posts in New-engry">New-engry</a></span>
                                                                <span class="like-count">75</span>
                                                        </li>
                                                </ul>
                                        </section>


                                        <section class="span4 articles-list">
                                                <h3>Latest Articles</h3>
                                                <ul class="articles">
                                                         <li class="article-entry standard">
                                                                <h4><a href="single.html">Website building foundation and advanced training </a></h4>
                                                                <span class="article-meta">25 Feb, 2020 in <a href="single.html" title="View all posts in IT synthesis">IT synthesis</a></span>
                                                                <span class="like-count">77</span>
                                                        </li>
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">PHP advanced training </a></h4>
                                                                <span class="article-meta">24 Feb, 2020 in <a href="single.html" title="View all posts in IT synthesis">IT synthesis</a></span>
                                                                <span class="like-count">80</span>
                                                        </li>
                                                        <li class="article-entry video">
                                                                <h4><a href="single.html">Influenza virus differentiation  </a></h4>
                                                                <span class="article-meta">10 Dec, 2019 in <a href="single.html" title="View all posts in Health-Science">Health-Science</a></span>
                                                                <span class="like-count">76</span>
                                                        </li>
                                                        <li class="article-entry image">
                                                                <h4><a href="single.html">Fundamentals of Engineering </a></h4>
                                                                <span class="article-meta">10 Jul, 2017 in <a href="single.html" title="View all posts in New-engry">New-engry</a></span>
                                                                <span class="like-count">120</span>
                                                        </li>
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">Food health classification </a></h4>
                                                                <span class="article-meta">17 Jun, 2018 in <a href="single.html" title="View all posts in Food and Fibre">Food and Fibre</a></span>
                                                                <span class="like-count">68</span>
                                                        </li>
                                                        <li class="article-entry standard">
                                                                <h4><a href="single.html">Advanced mechanical dynamics </a></h4>
                                                                <span class="article-meta">21 Feb, 2013 in <a href="single.html" title="View all posts in New-engry">New-engry</a></span>
                                                                <span class="like-count">75</span>
                                                        </li>
                                                </ul>
                                        </section>
                                </div>
                        </div>
                        <!-- end of page content -->


                        <!-- start of sidebar -->
                        <aside class="span4 page-sidebar">

                                <section class="widget">
                                        <div class="support-widget">
                                                <h3 class="title">Support</h3>
                                                <p class="intro">Need more support? If you did not found an answer, contact us for further help.</p>
                                        </div>
                                </section>

                                <section class="widget">
                                        <div class="quick-links-widget">
                                                <h3 class="title">Quick Links</h3>
                                                <ul id="menu-quick-links" class="menu clearfix">
                                                         <li><a href="index-2.html">Home</a></li>
                                                        <li><a href="articles-list.html">Selected content</a></li>
                                                        <li><a href="faq.html">FAQs</a></li>
                                                        <li><a href="contact.html">About</a></li>
                                                </ul>
                                        </div>
                                </section>

                                <section class="widget">
                                        <h3 class="title">Tags</h3>
                                        <div class="tagcloud">
                                                <a href="#" class="btn btn-mini">basic</a>
                                                <a href="#" class="btn btn-mini">beginner</a>
                                                <a href="#" class="btn btn-mini">blogging</a>
                                                <a href="#" class="btn btn-mini">colour</a>
                                                <a href="#" class="btn btn-mini">css</a>
                                                <a href="#" class="btn btn-mini">date</a>
                                                <a href="#" class="btn btn-mini">design</a>
                                                <a href="#" class="btn btn-mini">files</a>
                                                <a href="#" class="btn btn-mini">format</a>
                                                <a href="#" class="btn btn-mini">header</a>
                                                <a href="#" class="btn btn-mini">images</a>
                                                <a href="#" class="btn btn-mini">plugins</a>
                                                <a href="#" class="btn btn-mini">setting</a>
                                                <a href="#" class="btn btn-mini">templates</a>
                                                <a href="#" class="btn btn-mini">theme</a>
                                                <a href="#" class="btn btn-mini">time</a>
                                                <a href="#" class="btn btn-mini">videos</a>
                                                <a href="#" class="btn btn-mini">website</a>
                                                <a href="#" class="btn btn-mini">wordpress</a>
                                        </div>
                                </section>

                        </aside>
                        <!-- end of sidebar -->
                </div>
        </div>
</div>
<!-- End of Page Container -->

@endsection


