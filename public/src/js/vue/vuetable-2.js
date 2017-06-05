





<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">



  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/frameworks-d7b19415c108234b91acac0d0c02091c860993c13687a757ee345cc1ecd3a9d1.css" integrity="sha256-17GUFcEII0uRrKwNDAIJHIYJk8E2h6dX7jRcwezTqdE=" media="all" rel="stylesheet" />
  <link crossorigin="anonymous" href="https://assets-cdn.github.com/assets/github-4f45543748a5ed633e272a9e2f06ef56371b1c2fcfb79f6d425e8b145eb68cac.css" integrity="sha256-T0VUN0il7WM+JyqeLwbvVjcbHC/Pt59tQl6LFF62jKw=" media="all" rel="stylesheet" />
  
  
  
  

  <meta name="viewport" content="width=device-width">
  
  <title>vuetable-2/vuetable-2.js at master · ratiw/vuetable-2</title>
  <link rel="search" type="application/opensearchdescription+xml" href="/opensearch.xml" title="GitHub">
  <link rel="fluid-icon" href="https://github.com/fluidicon.png" title="GitHub">
  <meta property="fb:app_id" content="1401488693436528">

    
    <meta content="https://avatars1.githubusercontent.com/u/807017?v=3&amp;s=400" property="og:image" /><meta content="GitHub" property="og:site_name" /><meta content="object" property="og:type" /><meta content="ratiw/vuetable-2" property="og:title" /><meta content="https://github.com/ratiw/vuetable-2" property="og:url" /><meta content="vuetable-2 - data table simplify! -- datatable component for Vue 2.x" property="og:description" />

  <link rel="assets" href="https://assets-cdn.github.com/">
  <link rel="web-socket" href="wss://live.github.com/_sockets/VjI6MTY1MjgzMjI2OmIxMGU3NWFiOTlkMzQ4MDk3NjdlYWE3ODZhNTI4ZjhlMDkyYTIwOWY2YzdhMjczYWZmYTczMDJlYTZjYzJmNGU=--151c22e8cd682f4cb5ae781e7c8b074896bc5b32">
  <meta name="pjax-timeout" content="1000">
  <link rel="sudo-modal" href="/sessions/sudo_modal">
  <meta name="request-id" content="CE8D:0596:36774BD:55A07AA:59007601" data-pjax-transient>
  

  <meta name="selected-link" value="repo_source" data-pjax-transient>

  <meta name="google-site-verification" content="KT5gs8h0wvaagLKAVWq8bbeNwnZZK1r1XQysX3xurLU">
<meta name="google-site-verification" content="ZzhVyEFwb7w3e0-uOTltm8Jsck2F5StVihD0exw2fsA">
    <meta name="google-analytics" content="UA-3769691-2">

<meta content="collector.githubapp.com" name="octolytics-host" /><meta content="github" name="octolytics-app-id" /><meta content="https://collector.githubapp.com/github-external/browser_event" name="octolytics-event-url" /><meta content="CE8D:0596:36774BD:55A07AA:59007601" name="octolytics-dimension-request_id" /><meta content="5868618" name="octolytics-actor-id" /><meta content="nathiboat" name="octolytics-actor-login" /><meta content="0ffbc1812a8d5da41d221910f6be3953fec7a80d6a7e616a7f6783044cfadb51" name="octolytics-actor-hash" />
<meta content="/&lt;user-name&gt;/&lt;repo-name&gt;/blob/show" data-pjax-transient="true" name="analytics-location" />




  <meta class="js-ga-set" name="dimension1" content="Logged In">


  

      <meta name="hostname" content="github.com">
  <meta name="user-login" content="nathiboat">

      <meta name="expected-hostname" content="github.com">
    <meta name="js-proxy-site-detection-payload" content="MTg0ODkzNGU5ODRlNWNkZmI0YzY2OGZjYWI3ZjVlZjk3YWNmYjI3OWQyMjRkNWE2MjJlZjIxN2ZlMDUyMzllMHx7InJlbW90ZV9hZGRyZXNzIjoiMjE3LjEzOC4zNC4yMTgiLCJyZXF1ZXN0X2lkIjoiQ0U4RDowNTk2OjM2Nzc0QkQ6NTVBMDdBQTo1OTAwNzYwMSIsInRpbWVzdGFtcCI6MTQ5MzIwMjQ0MSwiaG9zdCI6ImdpdGh1Yi5jb20ifQ==">


  <meta name="html-safe-nonce" content="ce6a6e069867fc7807945c7eec53aefaae45312f">

  <meta http-equiv="x-pjax-version" content="ed9bbcba76e0cf16421fd05468ebb01f">
  

    
  <meta name="description" content="vuetable-2 - data table simplify! -- datatable component for Vue 2.x">
  <meta name="go-import" content="github.com/ratiw/vuetable-2 git https://github.com/ratiw/vuetable-2.git">

  <meta content="807017" name="octolytics-dimension-user_id" /><meta content="ratiw" name="octolytics-dimension-user_login" /><meta content="70338416" name="octolytics-dimension-repository_id" /><meta content="ratiw/vuetable-2" name="octolytics-dimension-repository_nwo" /><meta content="true" name="octolytics-dimension-repository_public" /><meta content="false" name="octolytics-dimension-repository_is_fork" /><meta content="70338416" name="octolytics-dimension-repository_network_root_id" /><meta content="ratiw/vuetable-2" name="octolytics-dimension-repository_network_root_nwo" />
        <link href="https://github.com/ratiw/vuetable-2/commits/master.atom" rel="alternate" title="Recent Commits to vuetable-2:master" type="application/atom+xml">


    <link rel="canonical" href="https://github.com/ratiw/vuetable-2/blob/master/dist/vuetable-2.js" data-pjax-transient>


  <meta name="browser-stats-url" content="https://api.github.com/_private/browser/stats">

  <meta name="browser-errors-url" content="https://api.github.com/_private/browser/errors">

  <link rel="mask-icon" href="https://assets-cdn.github.com/pinned-octocat.svg" color="#000000">
  <link rel="icon" type="image/x-icon" href="https://assets-cdn.github.com/favicon.ico">

<meta name="theme-color" content="#1e2327">


  <meta name="u2f-support" content="true">

  </head>

  <body class="logged-in env-production page-blob">
    


  <div class="position-relative js-header-wrapper ">
    <a href="#start-of-content" tabindex="1" class="accessibility-aid js-skip-to-content">Skip to content</a>
    <div id="js-pjax-loader-bar" class="pjax-loader-bar"><div class="progress"></div></div>

    
    
    



        
<div class="header" role="banner">
  <div class="container clearfix">
    <a class="header-logo-invertocat" href="https://github.com/" data-hotkey="g d" aria-label="Homepage" data-ga-click="Header, go to dashboard, icon:logo">
  <svg aria-hidden="true" class="octicon octicon-mark-github" height="32" version="1.1" viewBox="0 0 16 16" width="32"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
</a>


        <div class="header-search scoped-search site-scoped-search js-site-search" role="search">
  <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/ratiw/vuetable-2/search" class="js-site-search-form" data-scoped-search-url="/ratiw/vuetable-2/search" data-unscoped-search-url="/search" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <label class="form-control header-search-wrapper js-chromeless-input-container">
        <a href="/ratiw/vuetable-2/blob/master/dist/vuetable-2.js" class="header-search-scope no-underline">This repository</a>
      <input type="text"
        class="form-control header-search-input js-site-search-focus js-site-search-field is-clearable"
        data-hotkey="s"
        name="q"
        value=""
        placeholder="Search"
        aria-label="Search this repository"
        data-unscoped-placeholder="Search GitHub"
        data-scoped-placeholder="Search"
        autocapitalize="off">
        <input type="hidden" class="js-site-search-type-field" name="type" >
    </label>
</form></div>


      <ul class="header-nav float-left" role="navigation">
        <li class="header-nav-item">
          <a href="/pulls" aria-label="Pull requests you created" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:pulls context:user" data-hotkey="g p" data-selected-links="/pulls /pulls/assigned /pulls/mentioned /pulls">
            Pull requests
</a>        </li>
        <li class="header-nav-item">
          <a href="/issues" aria-label="Issues you created" class="js-selected-navigation-item header-nav-link" data-ga-click="Header, click, Nav menu - item:issues context:user" data-hotkey="g i" data-selected-links="/issues /issues/assigned /issues/mentioned /issues">
            Issues
</a>        </li>
          <li class="header-nav-item">
            <a class="header-nav-link" href="https://gist.github.com/" data-ga-click="Header, go to gist, text:gist">Gist</a>
          </li>
      </ul>

    
<ul class="header-nav user-nav float-right" id="user-links">
  <li class="header-nav-item">
    
    <a href="/notifications" aria-label="You have no unread notifications" class="header-nav-link notification-indicator tooltipped tooltipped-s js-socket-channel js-notification-indicator " data-channel="notification-changed:5868618" data-ga-click="Header, go to notifications, icon:read" data-hotkey="g n">
        <span class="mail-status "></span>
        <svg aria-hidden="true" class="octicon octicon-bell float-left" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 12v1H0v-1l.73-.58c.77-.77.81-2.55 1.19-4.42C2.69 3.23 6 2 6 2c0-.55.45-1 1-1s1 .45 1 1c0 0 3.39 1.23 4.16 5 .38 1.88.42 3.66 1.19 4.42l.66.58H14zm-7 4c1.11 0 2-.89 2-2H5c0 1.11.89 2 2 2z"/></svg>
</a>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link tooltipped tooltipped-s js-menu-target" href="/new"
       aria-label="Create new…"
       data-ga-click="Header, create new, icon:add">
      <svg aria-hidden="true" class="octicon octicon-plus float-left" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 9H7v5H5V9H0V7h5V2h2v5h5z"/></svg>
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <ul class="dropdown-menu dropdown-menu-sw">
        
<a class="dropdown-item" href="/new" data-ga-click="Header, create new repository">
  New repository
</a>

  <a class="dropdown-item" href="/new/import" data-ga-click="Header, import a repository">
    Import repository
  </a>

<a class="dropdown-item" href="https://gist.github.com/" data-ga-click="Header, create new gist">
  New gist
</a>

  <a class="dropdown-item" href="/organizations/new" data-ga-click="Header, create new organization">
    New organization
  </a>



  <div class="dropdown-divider"></div>
  <div class="dropdown-header">
    <span title="ratiw/vuetable-2">This repository</span>
  </div>
    <a class="dropdown-item" href="/ratiw/vuetable-2/issues/new" data-ga-click="Header, create new issue">
      New issue
    </a>

      </ul>
    </div>
  </li>

  <li class="header-nav-item dropdown js-menu-container">
    <a class="header-nav-link name tooltipped tooltipped-sw js-menu-target" href="/nathiboat"
       aria-label="View profile and more"
       data-ga-click="Header, show menu, icon:avatar">
      <img alt="@nathiboat" class="avatar" src="https://avatars1.githubusercontent.com/u/5868618?v=3&amp;s=40" height="20" width="20">
      <span class="dropdown-caret"></span>
    </a>

    <div class="dropdown-menu-content js-menu-content">
      <div class="dropdown-menu dropdown-menu-sw">
        <div class="dropdown-header header-nav-current-user css-truncate">
          Signed in as <strong class="css-truncate-target">nathiboat</strong>
        </div>

        <div class="dropdown-divider"></div>

        <a class="dropdown-item" href="/nathiboat" data-ga-click="Header, go to profile, text:your profile">
          Your profile
        </a>
        <a class="dropdown-item" href="/nathiboat?tab=stars" data-ga-click="Header, go to starred repos, text:your stars">
          Your stars
        </a>
        <a class="dropdown-item" href="/explore" data-ga-click="Header, go to explore, text:explore">
          Explore
        </a>
          <a class="dropdown-item" href="/integrations" data-ga-click="Header, go to integrations, text:integrations">
            Integrations
          </a>
        <a class="dropdown-item" href="https://help.github.com" data-ga-click="Header, go to help, text:help">
          Help
        </a>

        <div class="dropdown-divider"></div>

        <a class="dropdown-item" href="/settings/profile" data-ga-click="Header, go to settings, icon:settings">
          Settings
        </a>

        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/logout" class="logout-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="WqUPrnE5d4Z+X3x31rtCcmxrwfPg0hAO9Xuqzgvggl2I1V0HQfOvpkV+ckZ/j2YZgUJSNM9LwMG8p78+8Nut/w==" /></div>
          <button type="submit" class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
            Sign out
          </button>
</form>      </div>
    </div>
  </li>
</ul>


    <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/logout" class="sr-only right-0" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="KQy141wjZZE5/5ZOTlhSeeVwXfksoWE3t6AEhT7S/4P7fOdKbOm9sQLemH/nbHYSCFnOPgM4sfj+fBF1xenQIQ==" /></div>
      <button type="submit" class="dropdown-item dropdown-signout" data-ga-click="Header, sign out, icon:logout">
        Sign out
      </button>
</form>  </div>
</div>


      

  </div>

  <div id="start-of-content" class="accessibility-aid"></div>

    <div id="js-flash-container">
</div>



  <div role="main">
        <div itemscope itemtype="http://schema.org/SoftwareSourceCode">
    <div id="js-repo-pjax-container" data-pjax-container>
        


  <div class="pagehead repohead instapaper_ignore readability-menu experiment-repo-nav">
    <div class="container repohead-details-container">


      <ul class="pagehead-actions">
  <li>
        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/notifications/subscribe" class="js-social-container" data-autosubmit="true" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="hESOsWDIAKJSrZmmsLVRRT80dLGt/zK+2bAMMhTLa8SUdZ3ZQ2aqBXKLpSlb9SPyzlXe4blLVdlXFTbHs1fOKw==" /></div>      <input class="form-control" id="repository_id" name="repository_id" type="hidden" value="70338416" />

        <div class="select-menu js-menu-container js-select-menu">
          <a href="/ratiw/vuetable-2/subscription"
            class="btn btn-sm btn-with-count select-menu-button js-menu-target" role="button" tabindex="0" aria-haspopup="true"
            data-ga-click="Repository, click Watch settings, action:blob#show">
            <span class="js-select-button">
              <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
              Watch
            </span>
          </a>
          <a class="social-count js-social-count"
            href="/ratiw/vuetable-2/watchers"
            aria-label="18 users are watching this repository">
            18
          </a>

        <div class="select-menu-modal-holder">
          <div class="select-menu-modal subscription-menu-modal js-menu-content">
            <div class="select-menu-header js-navigation-enable" tabindex="-1">
              <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
              <span class="select-menu-title">Notifications</span>
            </div>

              <div class="select-menu-list js-navigation-container" role="menu">

                <div class="select-menu-item js-navigation-item selected" role="menuitem" tabindex="0">
                  <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
                  <div class="select-menu-item-text">
                    <input checked="checked" id="do_included" name="do" type="radio" value="included" />
                    <span class="select-menu-item-heading">Not watching</span>
                    <span class="description">Be notified when participating or @mentioned.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
                      Watch
                    </span>
                  </div>
                </div>

                <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                  <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
                  <div class="select-menu-item-text">
                    <input id="do_subscribed" name="do" type="radio" value="subscribed" />
                    <span class="select-menu-item-heading">Watching</span>
                    <span class="description">Be notified of all conversations.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-eye" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.06 2C3 2 0 8 0 8s3 6 8.06 6C13 14 16 8 16 8s-3-6-7.94-6zM8 12c-2.2 0-4-1.78-4-4 0-2.2 1.8-4 4-4 2.22 0 4 1.8 4 4 0 2.22-1.78 4-4 4zm2-4c0 1.11-.89 2-2 2-1.11 0-2-.89-2-2 0-1.11.89-2 2-2 1.11 0 2 .89 2 2z"/></svg>
                      Unwatch
                    </span>
                  </div>
                </div>

                <div class="select-menu-item js-navigation-item " role="menuitem" tabindex="0">
                  <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
                  <div class="select-menu-item-text">
                    <input id="do_ignore" name="do" type="radio" value="ignore" />
                    <span class="select-menu-item-heading">Ignoring</span>
                    <span class="description">Never be notified.</span>
                    <span class="js-select-button-text hidden-select-button-text">
                      <svg aria-hidden="true" class="octicon octicon-mute" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8 2.81v10.38c0 .67-.81 1-1.28.53L3 10H1c-.55 0-1-.45-1-1V7c0-.55.45-1 1-1h2l3.72-3.72C7.19 1.81 8 2.14 8 2.81zm7.53 3.22l-1.06-1.06-1.97 1.97-1.97-1.97-1.06 1.06L11.44 8 9.47 9.97l1.06 1.06 1.97-1.97 1.97 1.97 1.06-1.06L13.56 8l1.97-1.97z"/></svg>
                      Stop ignoring
                    </span>
                  </div>
                </div>

              </div>

            </div>
          </div>
        </div>
</form>
  </li>

  <li>
      <div class="js-toggler-container js-social-container starring-container ">
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/ratiw/vuetable-2/unstar" class="starred" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="AjR28CR1aY3NSRo0YFYaImFrg3ST9bzxagdUoQ13iVend7GPrCuxME9UdrRozcVhObn5WX/YisvFDKAXcP2fgw==" /></div>
      <button
        type="submit"
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Unstar this repository" title="Unstar ratiw/vuetable-2"
        data-ga-click="Repository, click unstar button, action:blob#show; text:Unstar">
        <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"/></svg>
        Unstar
      </button>
        <a class="social-count js-social-count" href="/ratiw/vuetable-2/stargazers"
           aria-label="335 users starred this repository">
          335
        </a>
</form>
    <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/ratiw/vuetable-2/star" class="unstarred" data-remote="true" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="Kuo54tyzK22hyLpCwwcN/pwZFVasMUwAvBj1sTFQcEgsLo8aisF4OBnVnGWTP7jC8TDZBhjoy75DqZY0kuYGZA==" /></div>
      <button
        type="submit"
        class="btn btn-sm btn-with-count js-toggler-target"
        aria-label="Star this repository" title="Star ratiw/vuetable-2"
        data-ga-click="Repository, click star button, action:blob#show; text:Star">
        <svg aria-hidden="true" class="octicon octicon-star" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M14 6l-4.9-.64L7 1 4.9 5.36 0 6l3.6 3.26L2.67 14 7 11.67 11.33 14l-.93-4.74z"/></svg>
        Star
      </button>
        <a class="social-count js-social-count" href="/ratiw/vuetable-2/stargazers"
           aria-label="335 users starred this repository">
          335
        </a>
</form>  </div>

  </li>

  <li>
          <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/ratiw/vuetable-2/fork" class="btn-with-count" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="dXx0RkAz1W4iz9yxr4hglVxq3a6P2ljXtmrZstZnJgXmYoVcQ0naEnxGivLIO1Nls1cr6HxF1bzqL2D/hNwJYA==" /></div>
            <button
                type="submit"
                class="btn btn-sm btn-with-count"
                data-ga-click="Repository, show fork modal, action:blob#show; text:Fork"
                title="Fork your own copy of ratiw/vuetable-2 to your account"
                aria-label="Fork your own copy of ratiw/vuetable-2 to your account">
              <svg aria-hidden="true" class="octicon octicon-repo-forked" height="16" version="1.1" viewBox="0 0 10 16" width="10"><path fill-rule="evenodd" d="M8 1a1.993 1.993 0 0 0-1 3.72V6L5 8 3 6V4.72A1.993 1.993 0 0 0 2 1a1.993 1.993 0 0 0-1 3.72V6.5l3 3v1.78A1.993 1.993 0 0 0 5 15a1.993 1.993 0 0 0 1-3.72V9.5l3-3V4.72A1.993 1.993 0 0 0 8 1zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3 10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zm3-10c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
              Fork
            </button>
</form>
    <a href="/ratiw/vuetable-2/network" class="social-count"
       aria-label="65 users forked this repository">
      65
    </a>
  </li>
</ul>

      <h1 class="public ">
  <svg aria-hidden="true" class="octicon octicon-repo" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M4 9H3V8h1v1zm0-3H3v1h1V6zm0-2H3v1h1V4zm0-2H3v1h1V2zm8-1v12c0 .55-.45 1-1 1H6v2l-1.5-1.5L3 16v-2H1c-.55 0-1-.45-1-1V1c0-.55.45-1 1-1h10c.55 0 1 .45 1 1zm-1 10H1v2h2v-1h3v1h5v-2zm0-10H2v9h9V1z"/></svg>
  <span class="author" itemprop="author"><a href="/ratiw" class="url fn" rel="author">ratiw</a></span><!--
--><span class="path-divider">/</span><!--
--><strong itemprop="name"><a href="/ratiw/vuetable-2" data-pjax="#js-repo-pjax-container">vuetable-2</a></strong>

</h1>

    </div>
    <div class="container">
      
<nav class="reponav js-repo-nav js-sidenav-container-pjax"
     itemscope
     itemtype="http://schema.org/BreadcrumbList"
     role="navigation"
     data-pjax="#js-repo-pjax-container">

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/ratiw/vuetable-2" class="js-selected-navigation-item selected reponav-item" data-hotkey="g c" data-selected-links="repo_source repo_downloads repo_commits repo_releases repo_tags repo_branches /ratiw/vuetable-2" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-code" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M9.5 3L8 4.5 11.5 8 8 11.5 9.5 13 14 8 9.5 3zm-5 0L0 8l4.5 5L6 11.5 2.5 8 6 4.5 4.5 3z"/></svg>
      <span itemprop="name">Code</span>
      <meta itemprop="position" content="1">
</a>  </span>

    <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
      <a href="/ratiw/vuetable-2/issues" class="js-selected-navigation-item reponav-item" data-hotkey="g i" data-selected-links="repo_issues repo_labels repo_milestones /ratiw/vuetable-2/issues" itemprop="url">
        <svg aria-hidden="true" class="octicon octicon-issue-opened" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M7 2.3c3.14 0 5.7 2.56 5.7 5.7s-2.56 5.7-5.7 5.7A5.71 5.71 0 0 1 1.3 8c0-3.14 2.56-5.7 5.7-5.7zM7 1C3.14 1 0 4.14 0 8s3.14 7 7 7 7-3.14 7-7-3.14-7-7-7zm1 3H6v5h2V4zm0 6H6v2h2v-2z"/></svg>
        <span itemprop="name">Issues</span>
        <span class="Counter">54</span>
        <meta itemprop="position" content="2">
</a>    </span>

  <span itemscope itemtype="http://schema.org/ListItem" itemprop="itemListElement">
    <a href="/ratiw/vuetable-2/pulls" class="js-selected-navigation-item reponav-item" data-hotkey="g p" data-selected-links="repo_pulls /ratiw/vuetable-2/pulls" itemprop="url">
      <svg aria-hidden="true" class="octicon octicon-git-pull-request" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 11.28V5c-.03-.78-.34-1.47-.94-2.06C9.46 2.35 8.78 2.03 8 2H7V0L4 3l3 3V4h1c.27.02.48.11.69.31.21.2.3.42.31.69v6.28A1.993 1.993 0 0 0 10 15a1.993 1.993 0 0 0 1-3.72zm-1 2.92c-.66 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2zM4 3c0-1.11-.89-2-2-2a1.993 1.993 0 0 0-1 3.72v6.56A1.993 1.993 0 0 0 2 15a1.993 1.993 0 0 0 1-3.72V4.72c.59-.34 1-.98 1-1.72zm-.8 10c0 .66-.55 1.2-1.2 1.2-.65 0-1.2-.55-1.2-1.2 0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2zM2 4.2C1.34 4.2.8 3.65.8 3c0-.65.55-1.2 1.2-1.2.65 0 1.2.55 1.2 1.2 0 .65-.55 1.2-1.2 1.2z"/></svg>
      <span itemprop="name">Pull requests</span>
      <span class="Counter">7</span>
      <meta itemprop="position" content="3">
</a>  </span>

    <a href="/ratiw/vuetable-2/projects" class="js-selected-navigation-item reponav-item" data-selected-links="repo_projects new_repo_project repo_project /ratiw/vuetable-2/projects">
      <svg aria-hidden="true" class="octicon octicon-project" height="16" version="1.1" viewBox="0 0 15 16" width="15"><path fill-rule="evenodd" d="M10 12h3V2h-3v10zm-4-2h3V2H6v8zm-4 4h3V2H2v12zm-1 1h13V1H1v14zM14 0H1a1 1 0 0 0-1 1v14a1 1 0 0 0 1 1h13a1 1 0 0 0 1-1V1a1 1 0 0 0-1-1z"/></svg>
      Projects
      <span class="Counter" >0</span>
</a>
    <a href="/ratiw/vuetable-2/wiki" class="js-selected-navigation-item reponav-item" data-hotkey="g w" data-selected-links="repo_wiki /ratiw/vuetable-2/wiki">
      <svg aria-hidden="true" class="octicon octicon-book" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M3 5h4v1H3V5zm0 3h4V7H3v1zm0 2h4V9H3v1zm11-5h-4v1h4V5zm0 2h-4v1h4V7zm0 2h-4v1h4V9zm2-6v9c0 .55-.45 1-1 1H9.5l-1 1-1-1H2c-.55 0-1-.45-1-1V3c0-.55.45-1 1-1h5.5l1 1 1-1H15c.55 0 1 .45 1 1zm-8 .5L7.5 3H2v9h6V3.5zm7-.5H9.5l-.5.5V12h6V3z"/></svg>
      Wiki
</a>

  <a href="/ratiw/vuetable-2/pulse" class="js-selected-navigation-item reponav-item" data-selected-links="pulse /ratiw/vuetable-2/pulse">
    <svg aria-hidden="true" class="octicon octicon-pulse" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M11.5 8L8.8 5.4 6.6 8.5 5.5 1.6 2.38 8H0v2h3.6l.9-1.8.9 5.4L9 8.5l1.6 1.5H14V8z"/></svg>
    Pulse
</a>
  <a href="/ratiw/vuetable-2/graphs" class="js-selected-navigation-item reponav-item" data-selected-links="repo_graphs repo_contributors /ratiw/vuetable-2/graphs">
    <svg aria-hidden="true" class="octicon octicon-graph" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M16 14v1H0V0h1v14h15zM5 13H3V8h2v5zm4 0H7V3h2v10zm4 0h-2V6h2v7z"/></svg>
    Graphs
</a>

</nav>

    </div>
  </div>

<div class="container new-discussion-timeline experiment-repo-nav">
  <div class="repository-content">

    
          

<a href="/ratiw/vuetable-2/blob/066f155cade04b69f9e28ee5ffb110d626676c36/dist/vuetable-2.js" class="d-none js-permalink-shortcut" data-hotkey="y">Permalink</a>

<!-- blob contrib key: blob_contributors:v21:ef4ecbf1e8dc25681a0c9b62ad69e824 -->

<div class="file-navigation js-zeroclipboard-container">
  
<div class="select-menu branch-select-menu js-menu-container js-select-menu float-left">
  <button class=" btn btn-sm select-menu-button js-menu-target css-truncate" data-hotkey="w"
    
    type="button" aria-label="Switch branches or tags" tabindex="0" aria-haspopup="true">
      <i>Branch:</i>
      <span class="js-select-button css-truncate-target">master</span>
  </button>

  <div class="select-menu-modal-holder js-menu-content js-navigation-container" data-pjax>

    <div class="select-menu-modal">
      <div class="select-menu-header">
        <svg aria-label="Close" class="octicon octicon-x js-menu-close" height="16" role="img" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
        <span class="select-menu-title">Switch branches/tags</span>
      </div>

      <div class="select-menu-filters">
        <div class="select-menu-text-filter">
          <input type="text" aria-label="Filter branches/tags" id="context-commitish-filter-field" class="form-control js-filterable-field js-navigation-enable" placeholder="Filter branches/tags">
        </div>
        <div class="select-menu-tabs">
          <ul>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="branches" data-filter-placeholder="Filter branches/tags" class="js-select-menu-tab" role="tab">Branches</a>
            </li>
            <li class="select-menu-tab">
              <a href="#" data-tab-filter="tags" data-filter-placeholder="Find a tag…" class="js-select-menu-tab" role="tab">Tags</a>
            </li>
          </ul>
        </div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="branches" role="menu">

        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
               href="/ratiw/vuetable-2/blob/develop/dist/vuetable-2.js"
               data-name="develop"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                develop
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open selected"
               href="/ratiw/vuetable-2/blob/master/dist/vuetable-2.js"
               data-name="master"
               data-skip-pjax="true"
               rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target js-select-menu-filter-text">
                master
              </span>
            </a>
        </div>

          <div class="select-menu-no-results">Nothing to show</div>
      </div>

      <div class="select-menu-list select-menu-tab-bucket js-select-menu-tab-bucket" data-tab-filter="tags">
        <div data-filterable-for="context-commitish-filter-field" data-filterable-type="substring">


            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/ratiw/vuetable-2/tree/v1.6.0/dist/vuetable-2.js"
              data-name="v1.6.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.6.0">
                v1.6.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/ratiw/vuetable-2/tree/v1.3.0/dist/vuetable-2.js"
              data-name="v1.3.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.3.0">
                v1.3.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/ratiw/vuetable-2/tree/v1.1.1/dist/vuetable-2.js"
              data-name="v1.1.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.1.1">
                v1.1.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/ratiw/vuetable-2/tree/v1.1.0/dist/vuetable-2.js"
              data-name="v1.1.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.1.0">
                v1.1.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/ratiw/vuetable-2/tree/v1.0.3/dist/vuetable-2.js"
              data-name="v1.0.3"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.0.3">
                v1.0.3
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/ratiw/vuetable-2/tree/v1.0.2/dist/vuetable-2.js"
              data-name="v1.0.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.0.2">
                v1.0.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/ratiw/vuetable-2/tree/v1.0.1/dist/vuetable-2.js"
              data-name="v1.0.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.0.1">
                v1.0.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/ratiw/vuetable-2/tree/v1.0.0/dist/vuetable-2.js"
              data-name="v1.0.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v1.0.0">
                v1.0.0
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/ratiw/vuetable-2/tree/v0.9.2/dist/vuetable-2.js"
              data-name="v0.9.2"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v0.9.2">
                v0.9.2
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/ratiw/vuetable-2/tree/v0.9.1/dist/vuetable-2.js"
              data-name="v0.9.1"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="v0.9.1">
                v0.9.1
              </span>
            </a>
            <a class="select-menu-item js-navigation-item js-navigation-open "
              href="/ratiw/vuetable-2/tree/1.2.0/dist/vuetable-2.js"
              data-name="1.2.0"
              data-skip-pjax="true"
              rel="nofollow">
              <svg aria-hidden="true" class="octicon octicon-check select-menu-item-icon" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M12 5l-8 8-4-4 1.5-1.5L4 10l6.5-6.5z"/></svg>
              <span class="select-menu-item-text css-truncate-target" title="1.2.0">
                1.2.0
              </span>
            </a>
        </div>

        <div class="select-menu-no-results">Nothing to show</div>
      </div>

    </div>
  </div>
</div>

  <div class="BtnGroup float-right">
    <a href="/ratiw/vuetable-2/find/master"
          class="js-pjax-capture-input btn btn-sm BtnGroup-item"
          data-pjax
          data-hotkey="t">
      Find file
    </a>
    <button aria-label="Copy file path to clipboard" class="js-zeroclipboard btn btn-sm BtnGroup-item tooltipped tooltipped-s" data-copied-hint="Copied!" type="button">Copy path</button>
  </div>
  <div class="breadcrumb js-zeroclipboard-target">
    <span class="repo-root js-repo-root"><span class="js-path-segment"><a href="/ratiw/vuetable-2"><span>vuetable-2</span></a></span></span><span class="separator">/</span><span class="js-path-segment"><a href="/ratiw/vuetable-2/tree/master/dist"><span>dist</span></a></span><span class="separator">/</span><strong class="final-path">vuetable-2.js</strong>
  </div>
</div>



  <div class="commit-tease">
      <span class="float-right">
        <a class="commit-tease-sha" href="/ratiw/vuetable-2/commit/066f155cade04b69f9e28ee5ffb110d626676c36" data-pjax>
          066f155
        </a>
        <relative-time datetime="2017-04-25T16:50:39Z">Apr 25, 2017</relative-time>
      </span>
      <div>
        <img alt="@ratiw" class="avatar" height="20" src="https://avatars2.githubusercontent.com/u/807017?v=3&amp;s=40" width="20" />
        <a href="/ratiw" class="user-mention" rel="author">ratiw</a>
          <a href="/ratiw/vuetable-2/commit/066f155cade04b69f9e28ee5ffb110d626676c36" class="message" data-pjax="true" title="v1.6.0">v1.6.0</a>
      </div>

    <div class="commit-tease-contributors">
      <button type="button" class="btn-link muted-link contributors-toggle" data-facebox="#blob_contributors_box">
        <strong>1</strong>
         contributor
      </button>
      
    </div>

    <div id="blob_contributors_box" style="display:none">
      <h2 class="facebox-header" data-facebox-id="facebox-header">Users who have contributed to this file</h2>
      <ul class="facebox-user-list" data-facebox-id="facebox-description">
          <li class="facebox-user-list-item">
            <img alt="@ratiw" height="24" src="https://avatars0.githubusercontent.com/u/807017?v=3&amp;s=48" width="24" />
            <a href="/ratiw">ratiw</a>
          </li>
      </ul>
    </div>
  </div>

<div class="file">
  <div class="file-header">
  <div class="file-actions">

    <div class="BtnGroup">
      <a href="/ratiw/vuetable-2/raw/master/dist/vuetable-2.js" class="btn btn-sm BtnGroup-item" id="raw-url">Raw</a>
        <a href="/ratiw/vuetable-2/blame/master/dist/vuetable-2.js" class="btn btn-sm js-update-url-with-hash BtnGroup-item" data-hotkey="b">Blame</a>
      <a href="/ratiw/vuetable-2/commits/master/dist/vuetable-2.js" class="btn btn-sm BtnGroup-item" rel="nofollow">History</a>
    </div>

        <a class="btn-octicon tooltipped tooltipped-nw"
           href="github-windows://openRepo/https://github.com/ratiw/vuetable-2?branch=master&amp;filepath=dist%2Fvuetable-2.js"
           aria-label="Open this file in GitHub Desktop"
           data-ga-click="Repository, open with desktop, type:windows">
            <svg aria-hidden="true" class="octicon octicon-device-desktop" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M15 2H1c-.55 0-1 .45-1 1v9c0 .55.45 1 1 1h5.34c-.25.61-.86 1.39-2.34 2h8c-1.48-.61-2.09-1.39-2.34-2H15c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm0 9H1V3h14v8z"/></svg>
        </a>

        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/ratiw/vuetable-2/edit/master/dist/vuetable-2.js" class="inline-form js-update-url-with-hash" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="J7HRWzmeC2rrBPCWA2rqAC1+cYoEy2FwNW0d3yKfkTDSu3z5KkRmap6ghy1uMlwzuUPiN/BLl0mGnyh88dR6+Q==" /></div>
          <button class="btn-octicon tooltipped tooltipped-nw" type="submit"
            aria-label="Fork this project and edit the file" data-hotkey="e" data-disable-with>
            <svg aria-hidden="true" class="octicon octicon-pencil" height="16" version="1.1" viewBox="0 0 14 16" width="14"><path fill-rule="evenodd" d="M0 12v3h3l8-8-3-3-8 8zm3 2H1v-2h1v1h1v1zm10.3-9.3L12 6 9 3l1.3-1.3a.996.996 0 0 1 1.41 0l1.59 1.59c.39.39.39 1.02 0 1.41z"/></svg>
          </button>
</form>        <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="/ratiw/vuetable-2/delete/master/dist/vuetable-2.js" class="inline-form" method="post"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /><input name="authenticity_token" type="hidden" value="ctUql0R71VsnF2YqWfpC97Mz06LnZLdeirt2a4hP3d+CechNUIL4vTfnl+G8WaD7VTMCz61/83yRRsl4TentkQ==" /></div>
          <button class="btn-octicon btn-octicon-danger tooltipped tooltipped-nw" type="submit"
            aria-label="Fork this project and delete the file" data-disable-with>
            <svg aria-hidden="true" class="octicon octicon-trashcan" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M11 2H9c0-.55-.45-1-1-1H5c-.55 0-1 .45-1 1H2c-.55 0-1 .45-1 1v1c0 .55.45 1 1 1v9c0 .55.45 1 1 1h7c.55 0 1-.45 1-1V5c.55 0 1-.45 1-1V3c0-.55-.45-1-1-1zm-1 12H3V5h1v8h1V5h1v8h1V5h1v8h1V5h1v9zm1-10H2V3h9v1z"/></svg>
          </button>
</form>  </div>

  <div class="file-info">
      8 lines (7 sloc)
      <span class="file-info-divider"></span>
    36.6 KB
  </div>
</div>

  

  <div itemprop="text" class="blob-wrapper data type-javascript">
      <table class="highlight tab-size js-file-line-container" data-tab-size="2">
      <tr>
        <td id="L1" class="blob-num js-line-number" data-line-number="1"></td>
        <td id="LC1" class="blob-code blob-code-inner js-file-line"><span class="pl-c">/**</span></td>
      </tr>
      <tr>
        <td id="L2" class="blob-num js-line-number" data-line-number="2"></td>
        <td id="LC2" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> * vuetable-2 v1.6.0</span></td>
      </tr>
      <tr>
        <td id="L3" class="blob-num js-line-number" data-line-number="3"></td>
        <td id="LC3" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> * https://github.com/ratiw/vuetable-2</span></td>
      </tr>
      <tr>
        <td id="L4" class="blob-num js-line-number" data-line-number="4"></td>
        <td id="LC4" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> * Released under the MIT License.</span></td>
      </tr>
      <tr>
        <td id="L5" class="blob-num js-line-number" data-line-number="5"></td>
        <td id="LC5" class="blob-code blob-code-inner js-file-line"><span class="pl-c"> */</span></td>
      </tr>
      <tr>
        <td id="L6" class="blob-num js-line-number" data-line-number="6"></td>
        <td id="LC6" class="blob-code blob-code-inner js-file-line">
</td>
      </tr>
      <tr>
        <td id="L7" class="blob-num js-line-number" data-line-number="7"></td>
        <td id="LC7" class="blob-code blob-code-inner js-file-line">!function(t,e){&quot;object&quot;==typeof exports&amp;&amp;&quot;object&quot;==typeof module?module.exports=e():&quot;function&quot;==typeof define&amp;&amp;define.amd?define([],e):&quot;object&quot;==typeof exports?exports.Vuetable=e():t.Vuetable=e()}(this,function(){return function(t){function e(i){if(n[i])return n[i].exports;var a=n[i]={exports:{},id:i,loaded:!1};return t[i].call(a.exports,a,a.exports,e),a.loaded=!0,a.exports}var n={};return e.m=t,e.c=n,e.p=&quot;&quot;,e(0)}([function(t,e,n){&quot;use strict&quot;;function i(t){return t&amp;&amp;t.__esModule?t:{default:t}}function a(t){t.component(&quot;vuetable&quot;,o.default),t.component(&quot;vuetable-pagination&quot;,l.default),t.component(&quot;vuetable-pagination-dropdown&quot;,u.default),t.component(&quot;vuetable-pagination-info&quot;,d.default)}Object.defineProperty(e,&quot;__esModule&quot;,{value:!0}),e.install=e.VuetablePaginationInfo=e.VuetablePaginationDropDown=e.VuetablePagination=e.Vuetable=void 0;var r=n(1),o=i(r),s=n(31),l=i(s),c=n(36),u=i(c),f=n(39),d=i(f);e.Vuetable=o.default,e.VuetablePagination=l.default,e.VuetablePaginationDropDown=u.default,e.VuetablePaginationInfo=d.default,e.install=a,e.default=o.default},function(t,e,n){var i,a;n(2),i=n(3),a=n(30),t.exports=i||{},t.exports.__esModule&amp;&amp;(t.exports=t.exports.default),a&amp;&amp;((&quot;function&quot;==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)},function(t,e){},function(t,e,n){&quot;use strict&quot;;function i(t){return t&amp;&amp;t.__esModule?t:{default:t}}Object.defineProperty(e,&quot;__esModule&quot;,{value:!0});var a=n(4),r=i(a);e.default={props:{fields:{type:Array,required:!0},loadOnStart:{type:Boolean,default:!0},apiUrl:{type:String,default:&quot;&quot;},apiMode:{type:Boolean,default:!0},data:{type:Array,default:function(){return null}},dataPath:{type:String,default:&quot;data&quot;},paginationPath:{type:[String],default:&quot;links.pagination&quot;},queryParams:{type:Object,default:function(){return{sort:&quot;sort&quot;,page:&quot;page&quot;,perPage:&quot;per_page&quot;}}},appendParams:{type:Object,default:function(){return{}}},httpOptions:{type:Object,default:function(){return{}}},perPage:{type:Number,default:function(){return 10}},sortOrder:{type:Array,default:function(){return[]}},multiSort:{type:Boolean,default:function(){return!1}},multiSortKey:{type:String,default:&quot;alt&quot;},rowClassCallback:{type:[String,Function],default:&quot;&quot;},rowClass:{type:[String,Function],default:&quot;&quot;},detailRowComponent:{type:String,default:&quot;&quot;},detailRowTransition:{type:String,default:&quot;&quot;},trackBy:{type:String,default:&quot;id&quot;},renderIcon:{type:Function,default:null},css:{type:Object,default:function(){return{tableClass:&quot;ui blue selectable celled stackable attached table&quot;,loadingClass:&quot;loading&quot;,ascendingIcon:&quot;blue chevron up icon&quot;,descendingIcon:&quot;blue chevron down icon&quot;,detailRowClass:&quot;vuetable-detail-row&quot;,handleIcon:&quot;grey sidebar icon&quot;}}},minRows:{type:Number,default:0},silent:{type:Boolean,default:!1}},data:function(){return{eventPrefix:&quot;vuetable:&quot;,tableFields:[],tableData:null,tablePagination:null,currentPage:1,selectedTo:[],visibleDetailRows:[]}},created:function(){this.normalizeFields(),this.$nextTick(function(){this.fireEvent(&quot;initialized&quot;,this.tableFields)}),this.apiMode&amp;&amp;this.loadOnStart&amp;&amp;this.loadData(),0==this.apiMode&amp;&amp;this.data.length&gt;0&amp;&amp;this.setData(this.data)},computed:{useDetailRow:function(){return this.tableData&amp;&amp;this.tableData[0]&amp;&amp;&quot;&quot;!==this.detailRowComponent&amp;&amp;&quot;undefined&quot;==typeof this.tableData[0][this.trackBy]?(this.warn(&quot;You need to define unique row identifier in order for detail-row feature to work. Use `track-by` prop to define one!&quot;),!1):&quot;&quot;!==this.detailRowComponent},countVisibleFields:function(){return this.tableFields.filter(function(t){return t.visible}).length},lessThanMinRows:function(){return null===this.tableData||0===this.tableData.length||this.tableData.length&lt;this.minRows},blankRows:function(){return null===this.tableData||0===this.tableData.length?this.minRows:this.tableData.length&gt;=this.minRows?0:this.minRows-this.tableData.length}},methods:{normalizeFields:function(){if(&quot;undefined&quot;==typeof this.fields)return void this.warn(&#39;You need to provide &quot;fields&quot; prop.&#39;);this.tableFields=[];var t=this,e=void 0;this.fields.forEach(function(n,i){e=&quot;string&quot;==typeof n?{name:n,title:t.setTitle(n),titleClass:&quot;&quot;,dataClass:&quot;&quot;,callback:null,visible:!0}:{name:n.name,title:void 0===n.title?t.setTitle(n.name):n.title,sortField:n.sortField,titleClass:void 0===n.titleClass?&quot;&quot;:n.titleClass,dataClass:void 0===n.dataClass?&quot;&quot;:n.dataClass,callback:void 0===n.callback?&quot;&quot;:n.callback,visible:void 0===n.visible||n.visible},t.tableFields.push(e)})},setData:function(t){this.apiMode=!1,this.tableData=t},setTitle:function(t){return this.isSpecialField(t)?&quot;&quot;:this.titleCase(t)},renderTitle:function(t){var e=&quot;undefined&quot;==typeof t.title?t.name.replace(&quot;.&quot;,&quot; &quot;):t.title;if(e.length&gt;0&amp;&amp;this.isInCurrentSortGroup(t)){var n=&quot;opacity:&quot;+this.sortIconOpacity(t)+&quot;;position:relative;float:right&quot;;return e+&quot; &quot;+this.renderIconTag([&quot;sort-icon&quot;,this.sortIcon(t)],&#39;style=&quot;&#39;+n+&#39;&quot;&#39;)}return e},isSpecialField:function(t){return&quot;__&quot;===t.slice(0,2)},titleCase:function(t){return t.replace(/\w+/g,function(t){return t.charAt(0).toUpperCase()+t.substr(1).toLowerCase()})},camelCase:function(t){var e=arguments.length&gt;1&amp;&amp;void 0!==arguments[1]?arguments[1]:&quot;_&quot;,n=this;return t.split(e).map(function(t){return n.titleCase(t)}).join(&quot;&quot;)},notIn:function(t,e){return e.indexOf(t)===-1},loadData:function(){var t=arguments.length&gt;0&amp;&amp;void 0!==arguments[0]?arguments[0]:this.loadSuccess,e=arguments.length&gt;1&amp;&amp;void 0!==arguments[1]?arguments[1]:this.loadFailed;this.apiMode&amp;&amp;(this.fireEvent(&quot;loading&quot;),this.httpOptions.params=this.getAllQueryParams(),r.default.get(this.apiUrl,this.httpOptions).then(t,e))},loadSuccess:function(t){this.fireEvent(&quot;load-success&quot;,t);var e=this.transform(t.data);this.tableData=this.getObjectValue(e,this.dataPath,null),this.tablePagination=this.getObjectValue(e,this.paginationPath,null),null===this.tablePagination&amp;&amp;this.warn(&#39;vuetable: pagination-path &quot;&#39;+this.paginationPath+&#39;&quot; not found. It looks like the data returned from the sever does not have pagination information or you may have set it incorrectly.\nYou can explicitly suppress this warning by setting pagination-path=&quot;&quot;.&#39;),this.$nextTick(function(){this.fireEvent(&quot;pagination-data&quot;,this.tablePagination),this.fireEvent(&quot;loaded&quot;)})},loadFailed:function(t){console.error(&quot;load-error&quot;,t),this.fireEvent(&quot;load-error&quot;,t),this.fireEvent(&quot;loaded&quot;)},transform:function(t){var e=&quot;transform&quot;;return this.parentFunctionExists(e)?this.$parent[e].call(this.$parent,t):t},parentFunctionExists:function(t){return&quot;&quot;!==t&amp;&amp;&quot;function&quot;==typeof this.$parent[t]},callParentFunction:function(t,e){var n=arguments.length&gt;2&amp;&amp;void 0!==arguments[2]?arguments[2]:null;return this.parentFunctionExists(t)?this.$parent[t].call(this.$parent,e):n},fireEvent:function(t,e){this.$emit(this.eventPrefix+t,e)},warn:function(t){this.silent||console.warn(t)},getAllQueryParams:function(){var t={};t[this.queryParams.sort]=this.getSortParam(),t[this.queryParams.page]=this.currentPage,t[this.queryParams.perPage]=this.perPage;for(var e in this.appendParams)t[e]=this.appendParams[e];return t},getSortParam:function(){return this.sortOrder&amp;&amp;&quot;&quot;!=this.sortOrder.field?&quot;function&quot;==typeof this.$parent.getSortParam?this.$parent.getSortParam.call(this.$parent,this.sortOrder):this.getDefaultSortParam():&quot;&quot;},getDefaultSortParam:function(){for(var t=&quot;&quot;,e=0;e&lt;this.sortOrder.length;e++){var n=&quot;undefined&quot;==typeof this.sortOrder[e].sortField?this.sortOrder[e].field:this.sortOrder[e].sortField;t+=n+&quot;|&quot;+this.sortOrder[e].direction+(e+1&lt;this.sortOrder.length?&quot;,&quot;:&quot;&quot;)}return t},extractName:function(t){return t.split(&quot;:&quot;)[0].trim()},extractArgs:function(t){return t.split(&quot;:&quot;)[1]},isSortable:function(t){return!(&quot;undefined&quot;==typeof t.sortField)},isInCurrentSortGroup:function(t){return this.currentSortOrderPosition(t)!==!1},currentSortOrderPosition:function(t){if(!this.isSortable(t))return!1;for(var e=0;e&lt;this.sortOrder.length;e++)if(this.fieldIsInSortOrderPosition(t,e))return e;return!1},fieldIsInSortOrderPosition:function(t,e){return this.sortOrder[e].field===t.name&amp;&amp;this.sortOrder[e].sortField===t.sortField},orderBy:function(t,e){if(this.isSortable(t)&amp;&amp;this.apiMode){var n=this.multiSortKey.toLowerCase()+&quot;Key&quot;;this.multiSort&amp;&amp;e[n]?this.multiColumnSort(t):this.singleColumnSort(t),this.currentPage=1,this.loadData()}},multiColumnSort:function(t){var e=this.currentSortOrderPosition(t);e===!1?this.sortOrder.push({field:t.name,sortField:t.sortField,direction:&quot;asc&quot;}):&quot;asc&quot;===this.sortOrder[e].direction?this.sortOrder[e].direction=&quot;desc&quot;:this.sortOrder.splice(e,1)},singleColumnSort:function(t){0===this.sortOrder.length&amp;&amp;this.clearSortOrder(),this.sortOrder.splice(1),this.fieldIsInSortOrderPosition(t,0)?this.sortOrder[0].direction=&quot;asc&quot;===this.sortOrder[0].direction?&quot;desc&quot;:&quot;asc&quot;:this.sortOrder[0].direction=&quot;asc&quot;,this.sortOrder[0].field=t.name,this.sortOrder[0].sortField=t.sortField},clearSortOrder:function(){this.sortOrder.push({field:&quot;&quot;,sortField:&quot;&quot;,direction:&quot;asc&quot;})},sortIcon:function(t){var e=&quot;&quot;,n=this.currentSortOrderPosition(t);return n!==!1&amp;&amp;(e=&quot;asc&quot;==this.sortOrder[n].direction?this.css.ascendingIcon:this.css.descendingIcon),e},sortIconOpacity:function(t){var e=1,n=.3,i=.3,a=this.sortOrder.length,r=this.currentSortOrderPosition(t);e-a*i&lt;n&amp;&amp;(i=(e-n)/(a-1));var o=e-r*i;return o},hasCallback:function(t){return!!t.callback},callCallback:function(t,e){if(this.hasCallback(t)){if(&quot;function&quot;==typeof t.callback)return t.callback(this.getObjectValue(e,t.name));var n=t.callback.split(&quot;|&quot;),i=n.shift();if(&quot;function&quot;==typeof this.$parent[i]){var a=this.getObjectValue(e,t.name);return n.length&gt;0?this.$parent[i].apply(this.$parent,[a].concat(n)):this.$parent[i].call(this.$parent,a)}return null}},getObjectValue:function(t,e,n){n=&quot;undefined&quot;==typeof n?null:n;var i=t;if(&quot;&quot;!=e.trim()){var a=e.split(&quot;.&quot;);a.forEach(function(t){return null===i||&quot;undefined&quot;==typeof i[t]||null===i[t]?void(i=n):void(i=i[t])})}return i},toggleCheckbox:function(t,e,n){var i=n.target.checked,a=this.trackBy;if(void 0===t[a])return void this.warn(&#39;__checkbox field: The &quot;&#39;+this.trackBy+&#39;&quot; field does not exist! Make sure the field you specify in &quot;track-by&quot; prop does exist.&#39;);var r=t[a];i?this.selectId(r):this.unselectId(r),this.$emit(&quot;vuetable:checkbox-toggled&quot;,i,t)},selectId:function(t){this.isSelectedRow(t)||this.selectedTo.push(t)},unselectId:function(t){this.selectedTo=this.selectedTo.filter(function(e){return e!==t})},isSelectedRow:function(t){return this.selectedTo.indexOf(t)&gt;=0},rowSelected:function(t,e){var n=this.trackBy,i=t[n];return this.isSelectedRow(i)},checkCheckboxesState:function(t){if(this.tableData){var e=this,n=this.trackBy,i=&quot;th.vuetable-th-checkbox-&quot;+n+&quot; input[type=checkbox]&quot;,a=document.querySelectorAll(i);void 0===a.forEach&amp;&amp;(a.forEach=function(t){[].forEach.call(a,t)});var r=this.tableData.filter(function(t){return e.selectedTo.indexOf(t[n])&gt;=0});return r.length&lt;=0?(a.forEach(function(t){t.indeterminate=!1}),!1):r.length&lt;this.perPage?(a.forEach(function(t){t.indeterminate=!0}),!0):(a.forEach(function(t){t.indeterminate=!1}),!0)}},toggleAllCheckboxes:function(t,e){var n=this,i=e.target.checked,a=this.trackBy;i?this.tableData.forEach(function(t){n.selectId(t[a])}):this.tableData.forEach(function(t){n.unselectId(t[a])}),this.$emit(&quot;vuetable:checkbox-toggled-all&quot;,i)},gotoPreviousPage:function(){this.currentPage&gt;1&amp;&amp;(this.currentPage--,this.loadData())},gotoNextPage:function(){this.currentPage&lt;this.tablePagination.last_page&amp;&amp;(this.currentPage++,this.loadData())},gotoPage:function(t){t!=this.currentPage&amp;&amp;t&gt;0&amp;&amp;t&lt;=this.tablePagination.last_page&amp;&amp;(this.currentPage=t,this.loadData())},isVisibleDetailRow:function(t){return this.visibleDetailRows.indexOf(t)&gt;=0},showDetailRow:function(t){this.isVisibleDetailRow(t)||this.visibleDetailRows.push(t)},hideDetailRow:function(t){this.isVisibleDetailRow(t)&amp;&amp;this.visibleDetailRows.splice(this.visibleDetailRows.indexOf(t),1)},toggleDetailRow:function(t){this.isVisibleDetailRow(t)?this.hideDetailRow(t):this.showDetailRow(t)},showField:function(t){t&lt;0||t&gt;this.tableFields.length||(this.tableFields[t].visible=!0)},hideField:function(t){t&lt;0||t&gt;this.tableFields.length||(this.tableFields[t].visible=!1)},toggleField:function(t){t&lt;0||t&gt;this.tableFields.length||(this.tableFields[t].visible=!this.tableFields[t].visible)},renderIconTag:function(t){var e=arguments.length&gt;1&amp;&amp;void 0!==arguments[1]?arguments[1]:&quot;&quot;;return null===this.renderIcon?&#39;&lt;i class=&quot;&#39;+t.join(&quot; &quot;)+&#39;&quot; &#39;+e+&quot;&gt;&lt;/i&gt;&quot;:this.renderIcon(t,e)},onRowClass:function(t,e){return&quot;&quot;!==this.rowClassCallback?void this.warn(&#39;&quot;row-class-callback&quot; prop is deprecated, please use &quot;row-class&quot; prop instead.&#39;):&quot;function&quot;==typeof this.rowClass?this.rowClass(t,e):this.rowClass},onRowChanged:function(t){return this.fireEvent(&quot;row-changed&quot;,t),!0},onRowClicked:function(t,e){return this.$emit(this.eventPrefix+&quot;row-clicked&quot;,t,e),!0},onRowDoubleClicked:function(t,e){this.$emit(this.eventPrefix+&quot;row-dblclicked&quot;,t,e)},onDetailRowClick:function(t,e){this.$emit(this.eventPrefix+&quot;detail-row-clicked&quot;,t,e)},onCellClicked:function(t,e,n){this.$emit(this.eventPrefix+&quot;cell-clicked&quot;,t,e,n)},onCellDoubleClicked:function(t,e,n){this.$emit(this.eventPrefix+&quot;cell-dblclicked&quot;,t,e,n)},changePage:function(t){&quot;prev&quot;===t?this.gotoPreviousPage():&quot;next&quot;===t?this.gotoNextPage():this.gotoPage(t)},reload:function(){this.loadData()},refresh:function(){this.currentPage=1,this.loadData()},resetData:function(){this.tableData=null,this.tablePagination=null,this.fireEvent(&quot;data-reset&quot;)}},watch:{multiSort:function(t,e){t===!1&amp;&amp;this.sortOrder.length&gt;1&amp;&amp;(this.sortOrder.splice(1),this.loadData())},apiUrl:function(t,e){t!==e&amp;&amp;this.refresh()}}}},function(t,e,n){t.exports=n(5)},function(t,e,n){&quot;use strict&quot;;function i(t){var e=new o(t),n=r(o.prototype.request,e);return a.extend(n,o.prototype,e),a.extend(n,e),n}var a=n(6),r=n(7),o=n(8),s=n(9),l=i(s);l.Axios=o,l.create=function(t){return i(a.merge(s,t))},l.Cancel=n(27),l.CancelToken=n(28),l.isCancel=n(24),l.all=function(t){return Promise.all(t)},l.spread=n(29),t.exports=l,t.exports.default=l},function(t,e,n){&quot;use strict&quot;;function i(t){return&quot;[object Array]&quot;===C.call(t)}function a(t){return&quot;[object ArrayBuffer]&quot;===C.call(t)}function r(t){return&quot;undefined&quot;!=typeof FormData&amp;&amp;t instanceof FormData}function o(t){var e;return e=&quot;undefined&quot;!=typeof ArrayBuffer&amp;&amp;ArrayBuffer.isView?ArrayBuffer.isView(t):t&amp;&amp;t.buffer&amp;&amp;t.buffer instanceof ArrayBuffer}function s(t){return&quot;string&quot;==typeof t}function l(t){return&quot;number&quot;==typeof t}function c(t){return&quot;undefined&quot;==typeof t}function u(t){return null!==t&amp;&amp;&quot;object&quot;==typeof t}function f(t){return&quot;[object Date]&quot;===C.call(t)}function d(t){return&quot;[object File]&quot;===C.call(t)}function p(t){return&quot;[object Blob]&quot;===C.call(t)}function h(t){return&quot;[object Function]&quot;===C.call(t)}function m(t){return u(t)&amp;&amp;h(t.pipe)}function v(t){return&quot;undefined&quot;!=typeof URLSearchParams&amp;&amp;t instanceof URLSearchParams}function g(t){return t.replace(/^\s*/,&quot;&quot;).replace(/\s*$/,&quot;&quot;)}function b(){return&quot;undefined&quot;!=typeof window&amp;&amp;&quot;undefined&quot;!=typeof document&amp;&amp;&quot;function&quot;==typeof document.createElement}function y(t,e){if(null!==t&amp;&amp;&quot;undefined&quot;!=typeof t)if(&quot;object&quot;==typeof t||i(t)||(t=[t]),i(t))for(var n=0,a=t.length;n&lt;a;n++)e.call(null,t[n],n,t);else for(var r in t)Object.prototype.hasOwnProperty.call(t,r)&amp;&amp;e.call(null,t[r],r,t)}function w(){function t(t,n){&quot;object&quot;==typeof e[n]&amp;&amp;&quot;object&quot;==typeof t?e[n]=w(e[n],t):e[n]=t}for(var e={},n=0,i=arguments.length;n&lt;i;n++)y(arguments[n],t);return e}function x(t,e,n){return y(e,function(e,i){n&amp;&amp;&quot;function&quot;==typeof e?t[i]=P(e,n):t[i]=e}),t}var P=n(7),C=Object.prototype.toString;t.exports={isArray:i,isArrayBuffer:a,isFormData:r,isArrayBufferView:o,isString:s,isNumber:l,isObject:u,isUndefined:c,isDate:f,isFile:d,isBlob:p,isFunction:h,isStream:m,isURLSearchParams:v,isStandardBrowserEnv:b,forEach:y,merge:w,extend:x,trim:g}},function(t,e){&quot;use strict&quot;;t.exports=function(t,e){return function(){for(var n=new Array(arguments.length),i=0;i&lt;n.length;i++)n[i]=arguments[i];return t.apply(e,n)}}},function(t,e,n){&quot;use strict&quot;;function i(t){this.defaults=t,this.interceptors={request:new o,response:new o}}var a=n(9),r=n(6),o=n(21),s=n(22),l=n(25),c=n(26);i.prototype.request=function(t){&quot;string&quot;==typeof t&amp;&amp;(t=r.merge({url:arguments[0]},arguments[1])),t=r.merge(a,this.defaults,{method:&quot;get&quot;},t),t.baseURL&amp;&amp;!l(t.url)&amp;&amp;(t.url=c(t.baseURL,t.url));var e=[s,void 0],n=Promise.resolve(t);for(this.interceptors.request.forEach(function(t){e.unshift(t.fulfilled,t.rejected)}),this.interceptors.response.forEach(function(t){e.push(t.fulfilled,t.rejected)});e.length;)n=n.then(e.shift(),e.shift());return n},r.forEach([&quot;delete&quot;,&quot;get&quot;,&quot;head&quot;],function(t){i.prototype[t]=function(e,n){return this.request(r.merge(n||{},{method:t,url:e}))}}),r.forEach([&quot;post&quot;,&quot;put&quot;,&quot;patch&quot;],function(t){i.prototype[t]=function(e,n,i){return this.request(r.merge(i||{},{method:t,url:e,data:n}))}}),t.exports=i},function(t,e,n){(function(e){&quot;use strict&quot;;function i(t,e){!r.isUndefined(t)&amp;&amp;r.isUndefined(t[&quot;Content-Type&quot;])&amp;&amp;(t[&quot;Content-Type&quot;]=e)}function a(){var t;return&quot;undefined&quot;!=typeof XMLHttpRequest?t=n(12):&quot;undefined&quot;!=typeof e&amp;&amp;(t=n(12)),t}var r=n(6),o=n(11),s=/^\)\]\}&#39;,?\n/,l={&quot;Content-Type&quot;:&quot;application/x-www-form-urlencoded&quot;},c={adapter:a(),transformRequest:[function(t,e){return o(e,&quot;Content-Type&quot;),r.isFormData(t)||r.isArrayBuffer(t)||r.isStream(t)||r.isFile(t)||r.isBlob(t)?t:r.isArrayBufferView(t)?t.buffer:r.isURLSearchParams(t)?(i(e,&quot;application/x-www-form-urlencoded;charset=utf-8&quot;),t.toString()):r.isObject(t)?(i(e,&quot;application/json;charset=utf-8&quot;),JSON.stringify(t)):t}],transformResponse:[function(t){if(&quot;string&quot;==typeof t){t=t.replace(s,&quot;&quot;);try{t=JSON.parse(t)}catch(t){}}return t}],timeout:0,xsrfCookieName:&quot;XSRF-TOKEN&quot;,xsrfHeaderName:&quot;X-XSRF-TOKEN&quot;,maxContentLength:-1,validateStatus:function(t){return t&gt;=200&amp;&amp;t&lt;300}};c.headers={common:{Accept:&quot;application/json, text/plain, */*&quot;}},r.forEach([&quot;delete&quot;,&quot;get&quot;,&quot;head&quot;],function(t){c.headers[t]={}}),r.forEach([&quot;post&quot;,&quot;put&quot;,&quot;patch&quot;],function(t){c.headers[t]=r.merge(l)}),t.exports=c}).call(e,n(10))},function(t,e){function n(){throw new Error(&quot;setTimeout has not been defined&quot;)}function i(){throw new Error(&quot;clearTimeout has not been defined&quot;)}function a(t){if(u===setTimeout)return setTimeout(t,0);if((u===n||!u)&amp;&amp;setTimeout)return u=setTimeout,setTimeout(t,0);try{return u(t,0)}catch(e){try{return u.call(null,t,0)}catch(e){return u.call(this,t,0)}}}function r(t){if(f===clearTimeout)return clearTimeout(t);if((f===i||!f)&amp;&amp;clearTimeout)return f=clearTimeout,clearTimeout(t);try{return f(t)}catch(e){try{return f.call(null,t)}catch(e){return f.call(this,t)}}}function o(){m&amp;&amp;p&amp;&amp;(m=!1,p.length?h=p.concat(h):v=-1,h.length&amp;&amp;s())}function s(){if(!m){var t=a(o);m=!0;for(var e=h.length;e;){for(p=h,h=[];++v&lt;e;)p&amp;&amp;p[v].run();v=-1,e=h.length}p=null,m=!1,r(t)}}function l(t,e){this.fun=t,this.array=e}function c(){}var u,f,d=t.exports={};!function(){try{u=&quot;function&quot;==typeof setTimeout?setTimeout:n}catch(t){u=n}try{f=&quot;function&quot;==typeof clearTimeout?clearTimeout:i}catch(t){f=i}}();var p,h=[],m=!1,v=-1;d.nextTick=function(t){var e=new Array(arguments.length-1);if(arguments.length&gt;1)for(var n=1;n&lt;arguments.length;n++)e[n-1]=arguments[n];h.push(new l(t,e)),1!==h.length||m||a(s)},l.prototype.run=function(){this.fun.apply(null,this.array)},d.title=&quot;browser&quot;,d.browser=!0,d.env={},d.argv=[],d.version=&quot;&quot;,d.versions={},d.on=c,d.addListener=c,d.once=c,d.off=c,d.removeListener=c,d.removeAllListeners=c,d.emit=c,d.binding=function(t){throw new Error(&quot;process.binding is not supported&quot;)},d.cwd=function(){return&quot;/&quot;},d.chdir=function(t){throw new Error(&quot;process.chdir is not supported&quot;)},d.umask=function(){return 0}},function(t,e,n){&quot;use strict&quot;;var i=n(6);t.exports=function(t,e){i.forEach(t,function(n,i){i!==e&amp;&amp;i.toUpperCase()===e.toUpperCase()&amp;&amp;(t[e]=n,delete t[i])})}},function(t,e,n){&quot;use strict&quot;;var i=n(6),a=n(13),r=n(16),o=n(17),s=n(18),l=n(14),c=&quot;undefined&quot;!=typeof window&amp;&amp;window.btoa&amp;&amp;window.btoa.bind(window)||n(19);t.exports=function(t){return new Promise(function(e,u){var f=t.data,d=t.headers;i.isFormData(f)&amp;&amp;delete d[&quot;Content-Type&quot;];var p=new XMLHttpRequest,h=&quot;onreadystatechange&quot;,m=!1;if(&quot;undefined&quot;==typeof window||!window.XDomainRequest||&quot;withCredentials&quot;in p||s(t.url)||(p=new window.XDomainRequest,h=&quot;onload&quot;,m=!0,p.onprogress=function(){},p.ontimeout=function(){}),t.auth){var v=t.auth.username||&quot;&quot;,g=t.auth.password||&quot;&quot;;d.Authorization=&quot;Basic &quot;+c(v+&quot;:&quot;+g)}if(p.open(t.method.toUpperCase(),r(t.url,t.params,t.paramsSerializer),!0),p.timeout=t.timeout,p[h]=function(){if(p&amp;&amp;(4===p.readyState||m)&amp;&amp;(0!==p.status||p.responseURL&amp;&amp;0===p.responseURL.indexOf(&quot;file:&quot;))){var n=&quot;getAllResponseHeaders&quot;in p?o(p.getAllResponseHeaders()):null,i=t.responseType&amp;&amp;&quot;text&quot;!==t.responseType?p.response:p.responseText,r={data:i,status:1223===p.status?204:p.status,statusText:1223===p.status?&quot;No Content&quot;:p.statusText,headers:n,config:t,request:p};a(e,u,r),p=null}},p.onerror=function(){u(l(&quot;Network Error&quot;,t)),p=null},p.ontimeout=function(){u(l(&quot;timeout of &quot;+t.timeout+&quot;ms exceeded&quot;,t,&quot;ECONNABORTED&quot;)),p=null},i.isStandardBrowserEnv()){var b=n(20),y=(t.withCredentials||s(t.url))&amp;&amp;t.xsrfCookieName?b.read(t.xsrfCookieName):void 0;y&amp;&amp;(d[t.xsrfHeaderName]=y)}if(&quot;setRequestHeader&quot;in p&amp;&amp;i.forEach(d,function(t,e){&quot;undefined&quot;==typeof f&amp;&amp;&quot;content-type&quot;===e.toLowerCase()?delete d[e]:p.setRequestHeader(e,t)}),t.withCredentials&amp;&amp;(p.withCredentials=!0),t.responseType)try{p.responseType=t.responseType}catch(t){if(&quot;json&quot;!==p.responseType)throw t}&quot;function&quot;==typeof t.onDownloadProgress&amp;&amp;p.addEventListener(&quot;progress&quot;,t.onDownloadProgress),&quot;function&quot;==typeof t.onUploadProgress&amp;&amp;p.upload&amp;&amp;p.upload.addEventListener(&quot;progress&quot;,t.onUploadProgress),t.cancelToken&amp;&amp;t.cancelToken.promise.then(function(t){p&amp;&amp;(p.abort(),u(t),p=null)}),void 0===f&amp;&amp;(f=null),p.send(f)})}},function(t,e,n){&quot;use strict&quot;;var i=n(14);t.exports=function(t,e,n){var a=n.config.validateStatus;n.status&amp;&amp;a&amp;&amp;!a(n.status)?e(i(&quot;Request failed with status code &quot;+n.status,n.config,null,n)):t(n)}},function(t,e,n){&quot;use strict&quot;;var i=n(15);t.exports=function(t,e,n,a){var r=new Error(t);return i(r,e,n,a)}},function(t,e){&quot;use strict&quot;;t.exports=function(t,e,n,i){return t.config=e,n&amp;&amp;(t.code=n),t.response=i,t}},function(t,e,n){&quot;use strict&quot;;function i(t){return encodeURIComponent(t).replace(/%40/gi,&quot;@&quot;).replace(/%3A/gi,&quot;:&quot;).replace(/%24/g,&quot;$&quot;).replace(/%2C/gi,&quot;,&quot;).replace(/%20/g,&quot;+&quot;).replace(/%5B/gi,&quot;[&quot;).replace(/%5D/gi,&quot;]&quot;)}var a=n(6);t.exports=function(t,e,n){if(!e)return t;var r;if(n)r=n(e);else if(a.isURLSearchParams(e))r=e.toString();else{var o=[];a.forEach(e,function(t,e){null!==t&amp;&amp;&quot;undefined&quot;!=typeof t&amp;&amp;(a.isArray(t)&amp;&amp;(e+=&quot;[]&quot;),a.isArray(t)||(t=[t]),a.forEach(t,function(t){a.isDate(t)?t=t.toISOString():a.isObject(t)&amp;&amp;(t=JSON.stringify(t)),o.push(i(e)+&quot;=&quot;+i(t))}))}),r=o.join(&quot;&amp;&quot;)}return r&amp;&amp;(t+=(t.indexOf(&quot;?&quot;)===-1?&quot;?&quot;:&quot;&amp;&quot;)+r),t}},function(t,e,n){&quot;use strict&quot;;var i=n(6);t.exports=function(t){var e,n,a,r={};return t?(i.forEach(t.split(&quot;\n&quot;),function(t){a=t.indexOf(&quot;:&quot;),e=i.trim(t.substr(0,a)).toLowerCase(),n=i.trim(t.substr(a+1)),e&amp;&amp;(r[e]=r[e]?r[e]+&quot;, &quot;+n:n)}),r):r}},function(t,e,n){&quot;use strict&quot;;var i=n(6);t.exports=i.isStandardBrowserEnv()?function(){function t(t){var e=t;return n&amp;&amp;(a.setAttribute(&quot;href&quot;,e),e=a.href),a.setAttribute(&quot;href&quot;,e),{href:a.href,protocol:a.protocol?a.protocol.replace(/:$/,&quot;&quot;):&quot;&quot;,host:a.host,search:a.search?a.search.replace(/^\?/,&quot;&quot;):&quot;&quot;,hash:a.hash?a.hash.replace(/^#/,&quot;&quot;):&quot;&quot;,hostname:a.hostname,port:a.port,pathname:&quot;/&quot;===a.pathname.charAt(0)?a.pathname:&quot;/&quot;+a.pathname}}var e,n=/(msie|trident)/i.test(navigator.userAgent),a=document.createElement(&quot;a&quot;);return e=t(window.location.href),function(n){var a=i.isString(n)?t(n):n;return a.protocol===e.protocol&amp;&amp;a.host===e.host}}():function(){return function(){return!0}}()},function(t,e){&quot;use strict&quot;;function n(){this.message=&quot;String contains an invalid character&quot;}function i(t){for(var e,i,r=String(t),o=&quot;&quot;,s=0,l=a;r.charAt(0|s)||(l=&quot;=&quot;,s%1);o+=l.charAt(63&amp;e&gt;&gt;8-s%1*8)){if(i=r.charCodeAt(s+=.75),i&gt;255)throw new n;e=e&lt;&lt;8|i}return o}var a=&quot;ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=&quot;;n.prototype=new Error,n.prototype.code=5,n.prototype.name=&quot;InvalidCharacterError&quot;,t.exports=i},function(t,e,n){&quot;use strict&quot;;var i=n(6);t.exports=i.isStandardBrowserEnv()?function(){return{write:function(t,e,n,a,r,o){var s=[];s.push(t+&quot;=&quot;+encodeURIComponent(e)),i.isNumber(n)&amp;&amp;s.push(&quot;expires=&quot;+new Date(n).toGMTString()),i.isString(a)&amp;&amp;s.push(&quot;path=&quot;+a),i.isString(r)&amp;&amp;s.push(&quot;domain=&quot;+r),o===!0&amp;&amp;s.push(&quot;secure&quot;),document.cookie=s.join(&quot;; &quot;)},read:function(t){var e=document.cookie.match(new RegExp(&quot;(^|;\\s*)(&quot;+t+&quot;)=([^;]*)&quot;));return e?decodeURIComponent(e[3]):null},remove:function(t){this.write(t,&quot;&quot;,Date.now()-864e5)}}}():function(){return{write:function(){},read:function(){return null},remove:function(){}}}()},function(t,e,n){&quot;use strict&quot;;function i(){this.handlers=[]}var a=n(6);i.prototype.use=function(t,e){return this.handlers.push({fulfilled:t,rejected:e}),this.handlers.length-1},i.prototype.eject=function(t){this.handlers[t]&amp;&amp;(this.handlers[t]=null)},i.prototype.forEach=function(t){a.forEach(this.handlers,function(e){null!==e&amp;&amp;t(e)})},t.exports=i},function(t,e,n){&quot;use strict&quot;;function i(t){t.cancelToken&amp;&amp;t.cancelToken.throwIfRequested()}var a=n(6),r=n(23),o=n(24),s=n(9);t.exports=function(t){i(t),t.headers=t.headers||{},t.data=r(t.data,t.headers,t.transformRequest),t.headers=a.merge(t.headers.common||{},t.headers[t.method]||{},t.headers||{}),a.forEach([&quot;delete&quot;,&quot;get&quot;,&quot;head&quot;,&quot;post&quot;,&quot;put&quot;,&quot;patch&quot;,&quot;common&quot;],function(e){delete t.headers[e]});var e=t.adapter||s.adapter;return e(t).then(function(e){return i(t),e.data=r(e.data,e.headers,t.transformResponse),e},function(e){return o(e)||(i(t),e&amp;&amp;e.response&amp;&amp;(e.response.data=r(e.response.data,e.response.headers,t.transformResponse))),Promise.reject(e)})}},function(t,e,n){&quot;use strict&quot;;var i=n(6);t.exports=function(t,e,n){return i.forEach(n,function(n){t=n(t,e)}),t}},function(t,e){&quot;use strict&quot;;t.exports=function(t){return!(!t||!t.__CANCEL__)}},function(t,e){&quot;use strict&quot;;t.exports=function(t){return/^([a-z][a-z\d\+\-\.]*:)?\/\//i.test(t)}},function(t,e){&quot;use strict&quot;;t.exports=function(t,e){return t.replace(/\/+$/,&quot;&quot;)+&quot;/&quot;+e.replace(/^\/+/,&quot;&quot;)}},function(t,e){&quot;use strict&quot;;function n(t){this.message=t}n.prototype.toString=function(){return&quot;Cancel&quot;+(this.message?&quot;: &quot;+this.message:&quot;&quot;)},n.prototype.__CANCEL__=!0,t.exports=n},function(t,e,n){&quot;use strict&quot;;function i(t){if(&quot;function&quot;!=typeof t)throw new TypeError(&quot;executor must be a function.&quot;);var e;this.promise=new Promise(function(t){e=t});var n=this;t(function(t){n.reason||(n.reason=new a(t),e(n.reason))})}var a=n(27);i.prototype.throwIfRequested=function(){if(this.reason)throw this.reason},i.source=function(){var t,e=new i(function(e){t=e});return{token:e,cancel:t}},t.exports=i},function(t,e){&quot;use strict&quot;;t.exports=function(t){return function(e){return t.apply(null,e)}}},function(t,e){t.exports=&#39; &lt;table :class=&quot;[\&#39;vuetable\&#39;, css.tableClass]&quot; _v-af5be29c=&quot;&quot;&gt; &lt;thead _v-af5be29c=&quot;&quot;&gt; &lt;tr _v-af5be29c=&quot;&quot;&gt; &lt;template v-for=&quot;field in tableFields&quot;&gt; &lt;template v-if=field.visible&gt; &lt;template v-if=isSpecialField(field.name)&gt; &lt;th v-if=&quot;extractName(field.name) == \&#39;__checkbox\&#39;&quot; :class=&quot;[\&#39;vuetable-th-checkbox-\&#39;+trackBy, field.titleClass]&quot; _v-af5be29c=&quot;&quot;&gt; &lt;input type=checkbox @change=&quot;toggleAllCheckboxes(field.name, $event)&quot; :checked=checkCheckboxesState(field.name) _v-af5be29c=&quot;&quot;&gt; &lt;/th&gt; &lt;th v-if=&quot;extractName(field.name) == \&#39;__component\&#39;&quot; @click=&quot;orderBy(field, $event)&quot; :class=&quot;[\&#39;vuetable-th-component-\&#39;+trackBy, field.titleClass, {\&#39;sortable\&#39;: isSortable(field)}]&quot; v-html=renderTitle(field) _v-af5be29c=&quot;&quot;&gt;&lt;/th&gt; &lt;th v-if=&quot;extractName(field.name) == \&#39;__slot\&#39;&quot; @click=&quot;orderBy(field, $event)&quot; :class=&quot;[\&#39;vuetable-th-slot-\&#39;+extractArgs(field.name), field.titleClass, {\&#39;sortable\&#39;: isSortable(field)}]&quot; v-html=renderTitle(field) _v-af5be29c=&quot;&quot;&gt;&lt;/th&gt; &lt;th v-if=&quot;apiMode &amp;amp;&amp;amp; extractName(field.name) == \&#39;__sequence\&#39;&quot; :class=&quot;[\&#39;vuetable-th-sequence\&#39;, field.titleClass || \&#39;\&#39;]&quot; v-html=renderTitle(field) _v-af5be29c=&quot;&quot;&gt; &lt;/th&gt; &lt;th v-if=&quot;notIn(extractName(field.name), [\&#39;__sequence\&#39;, \&#39;__checkbox\&#39;, \&#39;__component\&#39;, \&#39;__slot\&#39;])&quot; :class=&quot;[\&#39;vuetable-th-\&#39;+field.name, field.titleClass || \&#39;\&#39;]&quot; v-html=renderTitle(field) _v-af5be29c=&quot;&quot;&gt; &lt;/th&gt; &lt;/template&gt; &lt;template v-else=&quot;&quot;&gt; &lt;th @click=&quot;orderBy(field, $event)&quot; :id=&quot;\&#39;_\&#39; + field.name&quot; :class=&quot;[\&#39;vuetable-th-\&#39;+field.name, field.titleClass,  {\&#39;sortable\&#39;: isSortable(field)}]&quot; v-html=renderTitle(field) _v-af5be29c=&quot;&quot;&gt;&lt;/th&gt; &lt;/template&gt; &lt;/template&gt; &lt;/template&gt; &lt;/tr&gt; &lt;/thead&gt; &lt;tbody v-cloak=&quot;&quot; class=vuetable-body _v-af5be29c=&quot;&quot;&gt; &lt;template v-for=&quot;(item, index) in tableData&quot;&gt; &lt;tr @dblclick=&quot;onRowDoubleClicked(item, $event)&quot; :item-index=index @click=&quot;onRowClicked(item, $event)&quot; :render=onRowChanged(item) :class=&quot;onRowClass(item, index)&quot; _v-af5be29c=&quot;&quot;&gt; &lt;template v-for=&quot;field in tableFields&quot;&gt; &lt;template v-if=field.visible&gt; &lt;template v-if=isSpecialField(field.name)&gt; &lt;td v-if=&quot;apiMode &amp;amp;&amp;amp; extractName(field.name) == \&#39;__sequence\&#39;&quot; :class=&quot;[\&#39;vuetable-sequence\&#39;, field.dataClass]&quot; v-html=&quot;tablePagination.from + index&quot; _v-af5be29c=&quot;&quot;&gt; &lt;/td&gt; &lt;td v-if=&quot;extractName(field.name) == \&#39;__handle\&#39;&quot; :class=&quot;[\&#39;vuetable-handle\&#39;, field.dataClass]&quot; v-html=&quot;renderIconTag([\&#39;handle-icon\&#39;, css.handleIcon])&quot; _v-af5be29c=&quot;&quot;&gt;&lt;/td&gt; &lt;td v-if=&quot;extractName(field.name) == \&#39;__checkbox\&#39;&quot; :class=&quot;[\&#39;vuetable-checkboxes\&#39;, field.dataClass]&quot; _v-af5be29c=&quot;&quot;&gt; &lt;input type=checkbox @change=&quot;toggleCheckbox(item, field.name, $event)&quot; :checked=&quot;rowSelected(item, field.name)&quot; _v-af5be29c=&quot;&quot;&gt; &lt;/td&gt; &lt;td v-if=&quot;extractName(field.name) === \&#39;__component\&#39;&quot; :class=&quot;[\&#39;vuetable-component\&#39;, field.dataClass]&quot; _v-af5be29c=&quot;&quot;&gt; &lt;component :is=extractArgs(field.name) :row-data=item :row-index=index :row-field=field.sortField _v-af5be29c=&quot;&quot;&gt;&lt;/component&gt; &lt;/td&gt; &lt;td v-if=&quot;extractName(field.name) === \&#39;__slot\&#39;&quot; :class=&quot;[\&#39;vuetable-slot\&#39;, field.dataClass]&quot; _v-af5be29c=&quot;&quot;&gt; &lt;slot :name=extractArgs(field.name) :row-data=item :row-index=index :row-field=field.sortField _v-af5be29c=&quot;&quot;&gt;&lt;/slot&gt; &lt;/td&gt; &lt;/template&gt; &lt;template v-else=&quot;&quot;&gt; &lt;td v-if=hasCallback(field) :class=field.dataClass @click=&quot;onCellClicked(item, field, $event)&quot; @dblclick=&quot;onCellDoubleClicked(item, field, $event)&quot; v-html=&quot;callCallback(field, item)&quot; _v-af5be29c=&quot;&quot;&gt; &lt;/td&gt; &lt;td v-else=&quot;&quot; :class=field.dataClass @click=&quot;onCellClicked(item, field, $event)&quot; @dblclick=&quot;onCellDoubleClicked(item, field, $event)&quot; v-html=&quot;getObjectValue(item, field.name, \&#39;\&#39;)&quot; _v-af5be29c=&quot;&quot;&gt; &lt;/td&gt; &lt;/template&gt; &lt;/template&gt; &lt;/template&gt; &lt;/tr&gt; &lt;template v-if=useDetailRow&gt; &lt;tr v-if=isVisibleDetailRow(item[trackBy]) @click=&quot;onDetailRowClick(item, $event)&quot; :class=[css.detailRowClass] _v-af5be29c=&quot;&quot;&gt; &lt;td :colspan=countVisibleFields _v-af5be29c=&quot;&quot;&gt; &lt;component :is=detailRowComponent :row-data=item :row-index=index _v-af5be29c=&quot;&quot;&gt;&lt;/component&gt; &lt;/td&gt; &lt;/tr&gt;&lt;transition :name=detailRowTransition _v-af5be29c=&quot;&quot;&gt; &lt;/transition&gt; &lt;/template&gt; &lt;/template&gt; &lt;template v-if=lessThanMinRows&gt; &lt;tr v-for=&quot;i in blankRows&quot; class=blank-row _v-af5be29c=&quot;&quot;&gt; &lt;template v-for=&quot;field in tableFields&quot;&gt; &lt;td v-if=field.visible _v-af5be29c=&quot;&quot;&gt;&amp;nbsp;&lt;/td&gt; &lt;/template&gt; &lt;/tr&gt; &lt;/template&gt; &lt;/tbody&gt; &lt;/table&gt; &#39;},function(t,e,n){var i,a;i=n(32),a=n(35),t.exports=i||{},t.exports.__esModule&amp;&amp;(t.exports=t.exports.default),a&amp;&amp;((&quot;function&quot;==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)},function(t,e,n){&quot;use strict&quot;;function i(t){return t&amp;&amp;t.__esModule?t:{default:t}}Object.defineProperty(e,&quot;__esModule&quot;,{value:!0});var a=n(33),r=i(a);e.default={mixins:[r.default]}},function(t,e,n){var i,a;i=n(34),t.exports=i||{},t.exports.__esModule&amp;&amp;(t.exports=t.exports.default),a&amp;&amp;((&quot;function&quot;==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)},function(t,e){&quot;use strict&quot;;Object.defineProperty(e,&quot;__esModule&quot;,{value:!0}),e.default={props:{css:{type:Object,default:function(){return{wrapperClass:&quot;ui right floated pagination menu&quot;,activeClass:&quot;active large&quot;,disabledClass:&quot;disabled&quot;,pageClass:&quot;item&quot;,linkClass:&quot;icon item&quot;,paginationClass:&quot;ui bottom attached segment grid&quot;,</td>
      </tr>
      <tr>
        <td id="L8" class="blob-num js-line-number" data-line-number="8"></td>
        <td id="LC8" class="blob-code blob-code-inner js-file-line">paginationInfoClass:&quot;left floated left aligned six wide column&quot;,dropdownClass:&quot;ui search dropdown&quot;,icons:{first:&quot;angle double left icon&quot;,prev:&quot;left chevron icon&quot;,next:&quot;right chevron icon&quot;,last:&quot;angle double right icon&quot;}}}},onEachSide:{type:Number,default:function(){return 2}}},data:function(){return{eventPrefix:&quot;vuetable-pagination:&quot;,tablePagination:null}},computed:{totalPage:function(){return null===this.tablePagination?0:this.tablePagination.last_page},isOnFirstPage:function(){return null!==this.tablePagination&amp;&amp;1===this.tablePagination.current_page},isOnLastPage:function(){return null!==this.tablePagination&amp;&amp;this.tablePagination.current_page===this.tablePagination.last_page},notEnoughPages:function(){return this.totalPage&lt;2*this.onEachSide+4},windowSize:function(){return 2*this.onEachSide+1},windowStart:function(){return!this.tablePagination||this.tablePagination.current_page&lt;=this.onEachSide?1:this.tablePagination.current_page&gt;=this.totalPage-this.onEachSide?this.totalPage-2*this.onEachSide:this.tablePagination.current_page-this.onEachSide}},methods:{loadPage:function(t){this.$emit(this.eventPrefix+&quot;change-page&quot;,t)},isCurrentPage:function(t){return t===this.tablePagination.current_page},setPaginationData:function(t){this.tablePagination=t},resetData:function(){this.tablePagination=null}}}},function(t,e){t.exports=&quot; &lt;div v-if=\&quot;tablePagination &amp;&amp; tablePagination.last_page &gt; 1\&quot; :class=css.wrapperClass&gt; &lt;a @click=loadPage(1) :class=\&quot;[&#39;btn-nav&#39;, css.linkClass, isOnFirstPage ? css.disabledClass : &#39;&#39;]\&quot;&gt; &lt;i v-if=\&quot;css.icons.first != &#39;&#39;\&quot; :class=[css.icons.first]&gt;&lt;/i&gt; &lt;span v-else&gt;&amp;laquo;&lt;/span&gt; &lt;/a&gt; &lt;a @click=\&quot;loadPage(&#39;prev&#39;)\&quot; :class=\&quot;[&#39;btn-nav&#39;, css.linkClass, isOnFirstPage ? css.disabledClass : &#39;&#39;]\&quot;&gt; &lt;i v-if=\&quot;css.icons.next != &#39;&#39;\&quot; :class=[css.icons.prev]&gt;&lt;/i&gt; &lt;span v-else&gt;&amp;nbsp;&amp;lsaquo;&lt;/span&gt; &lt;/a&gt; &lt;template v-if=notEnoughPages&gt; &lt;template v-for=\&quot;n in totalPage\&quot;&gt; &lt;a @click=loadPage(n) :class=\&quot;[css.pageClass, isCurrentPage(n) ? css.activeClass : &#39;&#39;]\&quot; v-html=n&gt; &lt;/a&gt; &lt;/template&gt; &lt;/template&gt; &lt;template v-else&gt; &lt;template v-for=\&quot;n in windowSize\&quot;&gt; &lt;a @click=loadPage(windowStart+n-1) :class=\&quot;[css.pageClass, isCurrentPage(windowStart+n-1) ? css.activeClass : &#39;&#39;]\&quot; v-html=windowStart+n-1&gt; &lt;/a&gt; &lt;/template&gt; &lt;/template&gt; &lt;a @click=\&quot;loadPage(&#39;next&#39;)\&quot; :class=\&quot;[&#39;btn-nav&#39;, css.linkClass, isOnLastPage ? css.disabledClass : &#39;&#39;]\&quot;&gt; &lt;i v-if=\&quot;css.icons.next != &#39;&#39;\&quot; :class=[css.icons.next]&gt;&lt;/i&gt; &lt;span v-else&gt;&amp;rsaquo;&amp;nbsp;&lt;/span&gt; &lt;/a&gt; &lt;a @click=loadPage(totalPage) :class=\&quot;[&#39;btn-nav&#39;, css.linkClass, isOnLastPage ? css.disabledClass : &#39;&#39;]\&quot;&gt; &lt;i v-if=\&quot;css.icons.last != &#39;&#39;\&quot; :class=[css.icons.last]&gt;&lt;/i&gt; &lt;span v-else&gt;&amp;raquo;&lt;/span&gt; &lt;/a&gt; &lt;/div&gt; &quot;},function(t,e,n){var i,a;i=n(37),a=n(38),t.exports=i||{},t.exports.__esModule&amp;&amp;(t.exports=t.exports.default),a&amp;&amp;((&quot;function&quot;==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)},function(t,e,n){&quot;use strict&quot;;function i(t){return t&amp;&amp;t.__esModule?t:{default:t}}Object.defineProperty(e,&quot;__esModule&quot;,{value:!0});var a=n(33),r=i(a);e.default={mixins:[r.default],props:{pageText:{type:String,default:function(){return&quot;Page&quot;}}},methods:{registerEvents:function(){var t=this;this.$on(&quot;vuetable:pagination-data&quot;,function(e){t.setPaginationData(e)})}},created:function(){this.registerEvents()}}},function(t,e){t.exports=&#39; &lt;div :class=[css.wrapperClass]&gt; &lt;a @click=&quot;loadPage(\&#39;prev\&#39;)&quot; :class=&quot;[css.linkClass, {[css.disabledClass] : isOnFirstPage}]&quot;&gt; &lt;i :class=css.icons.prev&gt;&lt;/i&gt; &lt;/a&gt; &lt;select :class=&quot;[\&#39;vuetable-pagination-dropdown\&#39;, css.dropdownClass]&quot; @change=loadPage($event.target.selectedIndex+1)&gt; &lt;option v-for=&quot;n in totalPage&quot; :class=[css.pageClass] :value=n :selected=isCurrentPage(n)&gt; {{pageText}} {{n}} &lt;/option&gt; &lt;/select&gt; &lt;a @click=&quot;loadPage(\&#39;next\&#39;)&quot; :class=&quot;[css.linkClass, {[css.disabledClass] : isOnLastPage}]&quot;&gt; &lt;i :class=css.icons.next&gt;&lt;/i&gt; &lt;/a&gt; &lt;/div&gt; &#39;},function(t,e,n){var i,a;i=n(40),a=n(43),t.exports=i||{},t.exports.__esModule&amp;&amp;(t.exports=t.exports.default),a&amp;&amp;((&quot;function&quot;==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)},function(t,e,n){&quot;use strict&quot;;function i(t){return t&amp;&amp;t.__esModule?t:{default:t}}Object.defineProperty(e,&quot;__esModule&quot;,{value:!0});var a=n(41),r=i(a);e.default={mixins:[r.default]}},function(t,e,n){var i,a;i=n(42),t.exports=i||{},t.exports.__esModule&amp;&amp;(t.exports=t.exports.default),a&amp;&amp;((&quot;function&quot;==typeof t.exports?t.exports.options||(t.exports.options={}):t.exports).template=a)},function(t,e){&quot;use strict&quot;;Object.defineProperty(e,&quot;__esModule&quot;,{value:!0}),e.default={props:{css:{type:Object,default:function(){return{infoClass:&quot;left floated left aligned six wide column&quot;}}},infoTemplate:{type:String,default:function(){return&quot;Displaying {from} to {to} of {total} items&quot;}},noDataTemplate:{type:String,default:function(){return&quot;No relevant data&quot;}}},data:function(){return{tablePagination:null}},computed:{paginationInfo:function(){return null==this.tablePagination||0==this.tablePagination.total?this.noDataTemplate:this.infoTemplate.replace(&quot;{from}&quot;,this.tablePagination.from||0).replace(&quot;{to}&quot;,this.tablePagination.to||0).replace(&quot;{total}&quot;,this.tablePagination.total||0)}},methods:{setPaginationData:function(t){this.tablePagination=t},resetData:function(){this.tablePagination=null}}}},function(t,e){t.exports=&quot; &lt;div :class=\&quot;[&#39;vuetable-pagination-info&#39;, css.infoClass]\&quot; v-html=paginationInfo&gt; &lt;/div&gt; &quot;}])});</td>
      </tr>
</table>

  </div>

</div>

<button type="button" data-facebox="#jump-to-line" data-facebox-class="linejump" data-hotkey="l" class="d-none">Jump to Line</button>
<div id="jump-to-line" style="display:none">
  <!-- '"` --><!-- </textarea></xmp> --></option></form><form accept-charset="UTF-8" action="" class="js-jump-to-line-form" method="get"><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
    <input class="form-control linejump-input js-jump-to-line-field" type="text" placeholder="Jump to line&hellip;" aria-label="Jump to line" autofocus>
    <button type="submit" class="btn">Go</button>
</form></div>


  </div>
  <div class="modal-backdrop js-touch-events"></div>
</div>

    </div>
  </div>

  </div>

      <div class="container site-footer-container">
  <div class="site-footer" role="contentinfo">
    <ul class="site-footer-links float-right">
        <li><a href="https://github.com/contact" data-ga-click="Footer, go to contact, text:contact">Contact GitHub</a></li>
      <li><a href="https://developer.github.com" data-ga-click="Footer, go to api, text:api">API</a></li>
      <li><a href="https://training.github.com" data-ga-click="Footer, go to training, text:training">Training</a></li>
      <li><a href="https://shop.github.com" data-ga-click="Footer, go to shop, text:shop">Shop</a></li>
        <li><a href="https://github.com/blog" data-ga-click="Footer, go to blog, text:blog">Blog</a></li>
        <li><a href="https://github.com/about" data-ga-click="Footer, go to about, text:about">About</a></li>

    </ul>

    <a href="https://github.com" aria-label="Homepage" class="site-footer-mark" title="GitHub">
      <svg aria-hidden="true" class="octicon octicon-mark-github" height="24" version="1.1" viewBox="0 0 16 16" width="24"><path fill-rule="evenodd" d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27.68 0 1.36.09 2 .27 1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.013 8.013 0 0 0 16 8c0-4.42-3.58-8-8-8z"/></svg>
</a>
    <ul class="site-footer-links">
      <li>&copy; 2017 <span title="0.15224s from github-fe161-cp1-prd.iad.github.net">GitHub</span>, Inc.</li>
        <li><a href="https://github.com/site/terms" data-ga-click="Footer, go to terms, text:terms">Terms</a></li>
        <li><a href="https://github.com/site/privacy" data-ga-click="Footer, go to privacy, text:privacy">Privacy</a></li>
        <li><a href="https://github.com/security" data-ga-click="Footer, go to security, text:security">Security</a></li>
        <li><a href="https://status.github.com/" data-ga-click="Footer, go to status, text:status">Status</a></li>
        <li><a href="https://help.github.com" data-ga-click="Footer, go to help, text:help">Help</a></li>
    </ul>
  </div>
</div>



  

  <div id="ajax-error-message" class="ajax-error-message flash flash-error">
    <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"/></svg>
    <button type="button" class="flash-close js-flash-close js-ajax-error-dismiss" aria-label="Dismiss error">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
    </button>
    You can't perform that action at this time.
  </div>


    <script crossorigin="anonymous" integrity="sha256-ikMY/+oJoM24IUt2zykmufagztMYoxe+1BnbGSFMaQ0=" src="https://assets-cdn.github.com/assets/compat-8a4318ffea09a0cdb8214b76cf2926b9f6a0ced318a317bed419db19214c690d.js"></script>
    <script crossorigin="anonymous" integrity="sha256-bRCeda2EcbpBUIJybADDX7kpzquXUIJJKDXxHsqMB9k=" src="https://assets-cdn.github.com/assets/frameworks-6d109e75ad8471ba415082726c00c35fb929ceab975082492835f11eca8c07d9.js"></script>
    <script async="async" crossorigin="anonymous" integrity="sha256-IV6GPqf8kMXYv+HvwKJ2BEj9NOepYkyn/8adj3TEczI=" src="https://assets-cdn.github.com/assets/github-215e863ea7fc90c5d8bfe1efc0a2760448fd34e7a9624ca7ffc69d8f74c47332.js"></script>
    
    
    
    
  <div class="js-stale-session-flash stale-session-flash flash flash-warn flash-banner d-none">
    <svg aria-hidden="true" class="octicon octicon-alert" height="16" version="1.1" viewBox="0 0 16 16" width="16"><path fill-rule="evenodd" d="M8.865 1.52c-.18-.31-.51-.5-.87-.5s-.69.19-.87.5L.275 13.5c-.18.31-.18.69 0 1 .19.31.52.5.87.5h13.7c.36 0 .69-.19.86-.5.17-.31.18-.69.01-1L8.865 1.52zM8.995 13h-2v-2h2v2zm0-3h-2V6h2v4z"/></svg>
    <span class="signed-in-tab-flash">You signed in with another tab or window. <a href="">Reload</a> to refresh your session.</span>
    <span class="signed-out-tab-flash">You signed out in another tab or window. <a href="">Reload</a> to refresh your session.</span>
  </div>
  <div class="facebox" id="facebox" style="display:none;">
  <div class="facebox-popup">
    <div class="facebox-content" role="dialog" aria-labelledby="facebox-header" aria-describedby="facebox-description">
    </div>
    <button type="button" class="facebox-close js-facebox-close" aria-label="Close modal">
      <svg aria-hidden="true" class="octicon octicon-x" height="16" version="1.1" viewBox="0 0 12 16" width="12"><path fill-rule="evenodd" d="M7.48 8l3.75 3.75-1.48 1.48L6 9.48l-3.75 3.75-1.48-1.48L4.52 8 .77 4.25l1.48-1.48L6 6.52l3.75-3.75 1.48 1.48z"/></svg>
    </button>
  </div>
</div>


  </body>
</html>

