import 'package:flutkit/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutx/flutx.dart';

class MediCareProfileScreen extends StatefulWidget {
  const MediCareProfileScreen({Key? key}) : super(key: key);

  @override
  _MediCareProfileScreenState createState() => _MediCareProfileScreenState();
}

class _MediCareProfileScreenState extends State<MediCareProfileScreen> {
  late ThemeData theme;
  late CustomTheme customTheme;

  @override
  void initState() {
    super.initState();
    theme = AppTheme.theme;
    customTheme = AppTheme.customTheme;
  }

  Widget _buildSingleRow({String? title, IconData? icon}) {
    return Row(
      children: [
        Container(
          // paddingAll: 8,
          // borderRadiusAll: 4,
          color: theme.colorScheme.onBackground.withAlpha(20),
          child: Icon(
            icon,
            color: customTheme.medicarePrimary,
            size: 20,
          ),
        ),
        // FxSpacing.width(16),
        SizedBox(   //Use of SizedBox
          width: 16,
        ),

        Expanded(
          child: RichText(
            text: TextSpan(
              text: title!,
              style: TextStyle(letterSpacing: 0.5,fontSize: 12,
                  color: theme.colorScheme.onBackground.withAlpha(200)),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        // FxSpacing.width(16),
        SizedBox(   //Use of SizedBox
          width: 16,
        ),
        Icon(
          Icons.keyboard_arrow_right,
          color: theme.colorScheme.onBackground.withAlpha(160),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.fromLTRB(24, 52, 24, 24),
        children: [
          Center(
            child: Container(
              // paddingAll: 0,
              // borderRadiusAll: 24,
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(24),
                ),
                child: Image(
                  fit: BoxFit.cover,
                  width: 100,
                  height: 100,
                  image: AssetImage('assets/images/profile/avatar_4.jpg'),
                ),
              ),
            ),
          ),
          // FxSpacing.height(24),
          SizedBox(   //Use of SizedBox
            height: 24,
          ),
          RichText(
            text: TextSpan(
              text: "Bessie Cooper",
              style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.8, fontSize: 17),
            ),
            textAlign: TextAlign.center,
            // fontWeight: 600,
            // letterSpacing: 0.8,
          ),
          // FxSpacing.height(4),
          SizedBox(   //Use of SizedBox
            height: 4,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container (
                //color: customTheme.medicarePrimary,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: customTheme.medicarePrimary,
                ),
                height: 6,
                width: 6,
                child: Container(),

              ),
              // FxSpacing.width(6),
              SizedBox(   //Use of SizedBox
                width: 6,
              ),
              // FxText.b3(
              //   'Premium (9 days)',
              //   color: customTheme.medicarePrimary,
              //   muted: true,
              //   textAlign: TextAlign.center,
              // ),
              RichText(
                text: TextSpan(
                  text: "Premium (9 days)",
                  style: TextStyle( fontSize: 12.3,
                    color: customTheme.medicarePrimary,

                ),
                //textAlign: TextAlign.center,
              )
              )
            ],
          ),
          // FxSpacing.height(24),
          SizedBox(   //Use of SizedBox
            height: 24,
          ),
          // FxText.b3(
          //   'General',
          //   color: theme.colorScheme.onBackground,
          //   xMuted: true,
          // ),

          RichText(
              text: TextSpan(
                text: "General",
                style: TextStyle(
                  fontSize: 11,
                  letterSpacing: 0.8,
                  color: theme.colorScheme.onBackground.withAlpha(160),

                ),
              )
          ),
          //FxSpacing.height(24),
          SizedBox(   //Use of SizedBox
            height: 24,
          ),
          _buildSingleRow(
              title: 'Subscription & payment', icon: FeatherIcons.creditCard),
          // FxSpacing.height(8),
          SizedBox( height: 8,),
          Divider(),
          //FxSpacing.height(8),
          SizedBox( height: 8,),

          _buildSingleRow(title: 'Profile settings', icon: FeatherIcons.user),
          //FxSpacing.height(8),
          SizedBox( height: 8,),
          Divider(),
          //FxSpacing.height(8),
          SizedBox( height: 8,),
          _buildSingleRow(title: 'Password', icon: FeatherIcons.lock),
          //FxSpacing.height(8),
          SizedBox( height: 8,),
          Divider(),
          //FxSpacing.height(8),
          SizedBox( height: 8,),
          _buildSingleRow(title: 'Notifications', icon: FeatherIcons.bell),
          //FxSpacing.height(8),
          SizedBox( height: 8,),
          Divider(),
          //FxSpacing.height(8),

          SizedBox( height: 8,),

          _buildSingleRow(title: 'Logout', icon: FeatherIcons.logOut),
        ],
      ),
    );
  }
}
