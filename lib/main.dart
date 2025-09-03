import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/app.dart';
import 'presentation/providers/portfolio_provider.dart';
import 'presentation/providers/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        // ChangeNotifierProvider(create: (_) => ThemeProvider()),
        // ChangeNotifierProvider(create: (_) => PortfolioProvider()),
      ],
      // child: const PortfolioApp(),
    ),
  );
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return MaterialApp(
      title: 'Personal Portfolio',
      theme: themeProvider.getThemeData(),
      home: const Scaffold(
        body: Center(child: Text('Welcome to My Portfolio')),
      ),
    );
  }
}
