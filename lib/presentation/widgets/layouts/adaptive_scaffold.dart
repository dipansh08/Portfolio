import 'package:flutter/material.dart';
import '../../../core/utils/responsive_helper.dart';

class AdaptiveScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? endDrawer;
  final Widget? bottomNavigationBar;
  final FloatingActionButton? floatingActionButton;
  final bool useDrawerOnMobile;
  final bool showAppBarOnDesktop;

  const AdaptiveScaffold({
    Key? key,
    required this.body,
    this.appBar,
    this.drawer,
    this.endDrawer,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.useDrawerOnMobile = true,
    this.showAppBarOnDesktop = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveHelper.isMobile(context);
    final isDesktop = ResponsiveHelper.isDesktop(context);

    return Scaffold(
      appBar: (isMobile || showAppBarOnDesktop) ? appBar : null,
      drawer: (isMobile && useDrawerOnMobile) ? drawer : null,
      endDrawer: endDrawer,
      body: isDesktop && drawer != null && !useDrawerOnMobile
          ? Row(
              children: [
                SizedBox(
                  width: 280,
                  child: drawer!,
                ),
                Expanded(child: body),
              ],
            )
          : body,
      bottomNavigationBar: isMobile ? bottomNavigationBar : null,
      floatingActionButton: floatingActionButton,
    );
  }
}
