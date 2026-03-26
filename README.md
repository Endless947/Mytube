# MyTube (Simple Flutter Project)

This is a simple YouTube-style Flutter app made for lab practice.

## What This App Does

1. Shows a welcome screen with `Sign Up` and `Log In`.
2. Saves sign-up email/password in memory (for demo only).
3. Lets user log in with the same saved credentials.
4. Shows a list of sample videos with thumbnails.
5. Opens a video player screen when a card is tapped.
6. Allows logout back to welcome page.

## Current Scope (Intentionally Simple)

1. No backend/database.
2. No real account security.
3. No search/comments/subscriptions.
4. Data is hardcoded in the app.

## Main Files

1. `lib/main.dart` - App entry point.
2. `lib/welcome_page.dart` - Landing screen.
3. `lib/signup_page.dart` - Sign-up form.
4. `lib/login_page.dart` - Login form.
5. `lib/auth.dart` - In-memory credential variables.
6. `lib/home_page.dart` - Video list screen.
7. `lib/video_card.dart` - Reusable video card widget.
8. `lib/video_player_page.dart` - Video playback screen.

## Dependencies

1. `video_player` - Used for playing network videos.

## Run

1. `flutter pub get`
2. `flutter run -d chrome`

You can also run on Android/iOS if your local setup is configured.

Detailed explanation is available in `description.txt`.
