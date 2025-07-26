class ProjectsModel {
  final String title, description, url;

  ProjectsModel({
    required this.title,
    required this.description,
    required this.url,
  });
}

List<ProjectsModel> demoProjects = [
  ProjectsModel(
    url: 'https://github.com/theahmedhany/flux_responsive_admin_dashboard',
    title: "Flux: Responsive Admin Dashboard.",
    description:
        "Flux is a responsive Flutter-based admin dashboard that features expense tracking, invoice management, and transaction history. It uses fl_chart and flutter_svg to create stunning visuals. Designed for all screen sizes, it delivers a seamless user experience.",
  ),
  ProjectsModel(
    url: 'https://github.com/theahmedhany/blink_alarm_clock_app',
    title: "Blink: Alarm Clock App.",
    description:
        "Blink is a Flutter-based alarm clock app with clock, alarm, stopwatch, and timer features. It was built using Provider and Firebase and offers a seamless, scalable user experience.",
  ),
  ProjectsModel(
    url: 'https://github.com/theahmedhany/readify_book_store_app',
    title: "Readify: Book Store App.",
    description:
        "Readify is a Flutter-based book app with MVVM and BLoC, featuring book searches, previews, and recommendations. It uses Dio for APIs and includes animations for a smooth experience.",
  ),
  ProjectsModel(
    url: 'https://github.com/theahmedhany/scribble_notes_app',
    title: "Scribble: Notes App.",
    description:
        "Scribble is a Flutter Notes app with color-coded notes, dark mode, and easy editing, powered by Hive and Cubit. It offers seamless organization and user-friendly functionality. This project showcases my NoSQL and Flutter development skills.",
  ),
  ProjectsModel(
    url: 'https://github.com/theahmedhany/giggle_chat_app',
    title: "Giggle Chat App.",
    description:
        "Giggle Chat App is a Flutter-based messaging app with secure login, real-time messaging, and organized chat bubbles using Firebase. It ensures a smooth user experience with Modal Progress HUD. This project showcases my Flutter and Firebase expertise.",
  ),
  ProjectsModel(
    url: 'https://github.com/theahmedhany/goal_grid_habit_tracker_app',
    title: "GoalGrid: Habit Tracker App.",
    description:
        "GoalGrid is a Flutter habit tracker with heatmap visualization, swipe actions, and offline functionality using Hive. Built with packages like flutter_heatmap_calendar, it offers an engaging user experience. This project showcases my Flutter and productivity app development skills.",
  ),
  ProjectsModel(
    url: 'https://github.com/theahmedhany/flicker_news_app',
    title: "Flicker: News App.",
    description:
        "Flicker is a Flutter news app with real-time updates, WebView integration, and multi-category browsing. It supports Arabic and English news, built using Dio for APIs. This project showcases my Flutter and API integration skills.",
  ),
];
