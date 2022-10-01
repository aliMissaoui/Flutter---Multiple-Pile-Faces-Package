import 'dart:math';

import 'package:flutter/material.dart';
import 'package:multi_pile_faces/multi_pile_faces.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late List<FaceHolder> _availableUsers;
  final _allUsers = <FaceHolder>[
    FaceHolder(
    id: '0',
    name: 'first user',
    avatar: const AssetImage('assets/images/avatar.jpg'),
  ),
    FaceHolder(
      id: '1',
      name: 'second user',
      avatar: const AssetImage('assets/images/avatar1.png'),
    ),
    FaceHolder(
      id: '2',
      name: 'third user',
      avatar: const AssetImage('assets/images/avatar2.png'),
    ),
    FaceHolder(
      id: '3',
      name: 'fourth user',
      avatar: const AssetImage('assets/images/avatar3.jpg'),
    ),

  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _availableUsers = List.from(_allUsers);
  }

  void _addUserToPile() {
    if (_availableUsers.isNotEmpty) {
      final user = _availableUsers.removeLast();
      setState(() {
        _allUsers.add(user);
      });
    }
  }

  void _removeUserFromPile() {
    if (_allUsers.isNotEmpty) {
      setState(() {
        final user = _allUsers.removeAt(_allUsers.length-1);
        _availableUsers.insert(0, user);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 200),
          child: FacePile(
            faces: _allUsers,
            faceSize: 42,
            facePercentOverlap: .4, // 40% face overlap.
            borderColor: Colors.white,
            nameLabelColor: Colors.black,
            borderWidth: 0.4,
            animationDuration: const Duration(milliseconds: 500),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: ElevatedButton(
              child: const Text('Remove User Icon'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: _removeUserFromPile,
            ),
          ),
          FloatingActionButton(
            onPressed: _addUserToPile,
            mini: true,
            backgroundColor: Colors.white,
            child: const Icon(Icons.add, color: Colors.black,),
          ),
        ],
      ),
    );
  }
}
