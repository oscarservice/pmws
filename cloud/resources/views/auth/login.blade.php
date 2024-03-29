<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="msapplication-tap-highlight" content="no">
        <title>Login | THT Token</title>
        <link rel="icon" href="{{ asset('assets/favicon.ico') }}">

        <link href="{{ asset('assets/css/materialize.min.css') }}"type="text/css" rel="stylesheet" media="screen,projection">
        <link href="{{ asset('assets/css/style.min.css') }}" type="text/css" rel="stylesheet" media="screen,projection">
        <link href="{{ asset('assets/css/layouts/page-center.css') }}" type="text/css" rel="stylesheet" media="screen,projection">
        <link href="{{ asset('assets/js/plugins/prism/prism.css') }}" type="text/css" rel="stylesheet" media="screen,projection">
        <link href="{{ asset('assets/js/plugins/perfect-scrollbar/perfect-scrollbar.css') }}" type="text/css" rel="stylesheet" media="screen,projection">
    </head>

    <body class="teal">
        <div id="loader-wrapper">
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>

        @if(count($errors))
            @foreach ($errors->all() as $error)
                <div id="card-alert" class="card red">
                    <div class="card-content white-text" style="padding-left:11px">
                        <p>{{ $error }}</p>
                    </div>
                    <button type="button" class="close white-text" data-dismiss="alert" aria-label="Close" style="right:3px">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
            @endforeach
        @endif

        <div id="login-page" class="row">
            <div class="col s12 z-depth-4 card-panel">
                <form class="login-form" action="{{ route('post_login') }}" method="post" onsubmit="return load()">
                    {{ csrf_field() }}
                    <div class="row">
                        <div class="input-field col s12 center">
                            <p class="center login-form-text" style="font-size:23px;margin-top:5px">THT Token</p>
                            <p class="center login-form-text" style="letter-spacing:1px">Enter the credentials to Log in</p>
                        </div>
                    </div>
                    <div class="row margin">
                        <div class="input-field col s12">
                            <i class="mdi-social-person-outline prefix"></i>
                            <input id="username" type="text" name="username" placeholder="Username" value="{{ old('username') }}" autofocus>
                            <label for="username" class="active">Username</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <i class="mdi-action-lock-outline prefix"></i>
                            <input id="password" type="password" name="password" placeholder="Password">
                            <label for="password">Password</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12 m12 l12  login-text">
                            <input type="checkbox" id="remember-me" name="remember">
                            <label for="remember-me">Remember me</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                            <button type="submit" class="btn waves-effect waves-light col s12">Log in</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12 m12 l12">
                            <p class="margin medium-small"><a href="{{ route('get_email') }}">Forgot password ?</a></p>
                        </div>
                    </div>
                </form>
            </div>
            <div class="row center-align white-text" style="margin-bottom:0">
                <span>Powered by <a href="http://www.thealthtech.com" target="_blank" style="color:#ccc">Trinity Health Technologies</a></span>
            </div>
        </div>

        <script type="text/javascript" src="{{ asset('assets/js/plugins/jquery-1.11.2.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('assets/js/materialize.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('assets/js/plugins/prism/prism.js') }}"></script>
        <script type="text/javascript" src="{{ asset('assets/js/plugins/perfect-scrollbar/perfect-scrollbar.min.js') }}"></script>
        <script type="text/javascript" src="{{ asset('assets/js/plugins.min.js') }}"></script>
        <script>
            function load(){
                $('body').removeClass('loaded');
                return true;
            }
        </script>
        @include('common.messages')
    </body>
</html>
