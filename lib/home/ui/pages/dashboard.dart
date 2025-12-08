import 'package:flutter/material.dart';
import 'package:snapcheck/Auth/ui/widgets/my_button.dart';
import 'package:snapcheck/common/paddings/paddings.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF3C8FF4),
                Color(0xFF9656ED),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: Paddings.reponsiveHeight(context, 40.0),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  height: Paddings.reponsiveHeight(context, 40.0),
                  child: Image.asset('assets/images/finalLogo.png'),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                  ),
                  child: Center(
                    child: SizedBox(
                        height: Paddings.reponsiveHeight(context, 60.0),
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: MyButton(
                          text: 'Monitor Child\'s Device',
                          onTap: () {},
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
