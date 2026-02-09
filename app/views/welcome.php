<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form</title>
  <link rel="stylesheet" href="/assets/login.css">
  <!-- Font Awesome pour les icônes -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
<section class="login-section">
  <div class="login-container">
    
    <!-- Image -->
    <div class="login-image">
      <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp" alt="Sample image">
    </div>

    <!-- Formulaire -->
    <div class="login-form">
      <form>
        <div class="social-login">
          <p>Sign in with</p>
          <button class="social-btn"><i class="fab fa-facebook-f"></i></button>
          <button class="social-btn"><i class="fab fa-twitter"></i></button>
          <button class="social-btn"><i class="fab fa-linkedin-in"></i></button>
        </div>

        <div class="divider"><span>Or</span></div>

        <div class="form-group">
          <label for="email">Email address</label>
          <input type="email" id="email" placeholder="Enter a valid email address">
        </div>

        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" placeholder="Enter password">
        </div>

        <div class="options">
          <label><input type="checkbox"> Remember me</label>
          <a href="#">Forgot password?</a>
        </div>

        <button class="login-btn">Login</button>
        <p class="register-text">Don't have an account? <a href="#">Register</a></p>
      </form>
    </div>
  </div>

  <!-- Footer -->
  <footer class="login-footer">
    <p>Copyright © 2020. All rights reserved.</p>
    <div class="footer-icons">
      <a href="#"><i class="fab fa-facebook-f"></i></a>
      <a href="#"><i class="fab fa-twitter"></i></a>
      <a href="#"><i class="fab fa-google"></i></a>
      <a href="#"><i class="fab fa-linkedin-in"></i></a>
    </div>
  </footer>
</section>
</body>
</html>
