import 'package:flutter/material.dart';


class AddNewAdress extends StatefulWidget {
  const AddNewAdress({super.key});

  @override
  State<AddNewAdress> createState() => _AddNewAdressState();
}

class _AddNewAdressState extends State<AddNewAdress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Add New Adress'),
      ),
      body: SingleChildScrollView(

      ),
    );
  }
}
