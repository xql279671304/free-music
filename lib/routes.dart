import 'package:free_music/pages/albums/albums.dart';
import 'package:free_music/pages/login_error/login_error.dart';
import 'package:free_music/pages/sign_in/sign_in.dart';
import 'package:free_music/pages/sign_up/sign_up.dart';

var staticRoutes = {
  "/sign-in": (context) => const SignInPage(),
  "/sign-up": (context) => const SignUpPage(),
  "/login-error": (context) => const LoginErrorPage(),
  "/albums": (context) => const AlbumsPage(),
};
