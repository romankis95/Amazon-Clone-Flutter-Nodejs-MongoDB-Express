import 'package:amazonclone/features/account/widgets/below_appbar.dart';
import 'package:flutter/material.dart';

import '../../../constants/global_variables.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/amazon_logo.png',
                  height: 45,
                  width: 120,
                  color: Colors.black,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.notifications_outlined),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.search),
                    ),
                  ],
                ),
              )
            ],
          ),
          centerTitle: true,
        ),
      ),
      body: Column(
        children: const [BelowAppBar()],
      ),
    );
  }
}
