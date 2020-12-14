import 'package:flutter/material.dart';
import 'package:moto_kerala/CommonComponents/components/CustomBottomAppbar.dart';
import 'package:moto_kerala/Screens/Forgotpassword/ForgotPassword.dart';

class DummyPage extends StatefulWidget {
  @override
  _DummyPageState createState() => _DummyPageState();
}

class _DummyPageState extends State<DummyPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = TabController(
      length: 4,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(children: [
        ForgotPassword(),
        ForgotPassword(),
        ForgotPassword(),
        ForgotPassword(),
      ],controller: controller,),
      bottomNavigationBar: CustomBottomAppbar(tabController: controller,),
    );
  }
}
