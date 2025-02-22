import 'package:flutter/material.dart';
import 'package:smartquize/model/theme/theme.dart';
import 'package:smartquize/view/admin/admin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Smart Quize', 
    theme: AppTheme.theme,
     home: AdminHomeScreen(),
    
    
    );
  }
}
