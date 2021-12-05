<!DOCTYPE html>
<html lang="en" class="h-100">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <title>ILS 2021 | Login</title>
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="../images/favicon.png">
    <link href="../css/style.css" rel="stylesheet">

</head>

<body class="h-100">
  <div class="authincation h-100">
    <div class="container h-100">
      <div class="row justify-content-center h-100 align-items-center">
        <div class="col-md-6">
          <div class="authincation-content" style="border-radius:30px;">
            <div class="row no-gutters">
              <div class="col-xl-12">
                <div class="auth-form">
                  <h4 class="text-center mb-4">Sign in your account</h4>
                  <form class="form" method="POST" action="{{ route('login') }}">
                    @csrf
                    <div class="form-group">
                      <label class="mb-1"><strong>Email</strong></label>
                      <input type="email" name="email" id="email" class="form-control" placeholder="hello@example.com">
                    </div>
                    <div class="form-group">
                      <label class="mb-1"><strong>Password</strong></label>
                      <input type="password" name="password" id="password" class="form-control" placeholder="Password">
                    </div>
                    <div class="form-row d-flex justify-content-between mt-4 mb-2">
                      <div class="form-group">
                        <div class="custom-control custom-checkbox ml-1">
                          <input type="checkbox" class="custom-control-input" id="remember" name="remember" checked>
                          <label class="custom-control-label" for="basic_checkbox_1">Remember my preference</label>
                        </div>
                      </div>
                      <div class="form-group">
                        <a href="page-forgot-password.html">Forgot Password?</a>
                      </div>
                    </div>
                    <div class="text-center">
                      <button type="submit" class="btn btn-primary btn-block">Sign Me In</button>
                    </div>
                  </form>
                  <div class="new-account mt-3">
                    <p>Don't have an account? <a class="text-primary" href="{{Route('register')}}">Sign up</a></p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>


  <!--**********************************
      Scripts
  ***********************************-->
  <!-- Required vendors -->
  <script src="../vendor/global/global.min.js"></script>
  <script src="../vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
  <script src="../js/custom.min.js"></script>
  <script src="../js/deznav-init.js"></script>

</body>

</html>