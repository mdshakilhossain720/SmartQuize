import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class AdminHomeScreen extends StatefulWidget {
  const AdminHomeScreen({super.key});

  @override
  State<AdminHomeScreen> createState() => _AdminHomeScreenState();
}

class _AdminHomeScreenState extends State<AdminHomeScreen> {

  final FirebaseFirestore _firestore=FirebaseFirestore.instance;
  Future<Map<String, dynamic>>fetchStateics()async{
    final categoriesCount=await _firestore.collection('categories').count().get();
    final quizesCount=await _firestore.collection('quizes').count().get();
    final latesQuize =await _firestore.collection('quizes').orderBy('createdAt',descending: true).limit(5).get();
 
    return {
      'categoriesCount':categoriesCount.count,
      'quizesCount':quizesCount.count,
      
    };

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
