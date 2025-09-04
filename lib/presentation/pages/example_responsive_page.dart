import 'package:flutter/material.dart';
import '../widgets/common/responsive_wrapper.dart';
import '../widgets/common/responsive_grid.dart';
import '../widgets/common/responsive_text.dart';
import '../widgets/common/responsive_row.dart';
import '../../../core/extensions/context_extensions.dart';

class ExampleResponsivePage extends StatelessWidget {
  const ExampleResponsivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ResponsiveWrapper(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Responsive Hero Section
              Container(
                height: context.responsiveValue(
                  mobile: 400,
                  tablet: 500,
                  desktop: 600,
                ),
                color: Colors.blue.shade100,
                child: Center(
                  child: ResponsiveText(
                    'Responsive Hero Section',
                    baseFontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Responsive Grid
              ResponsiveGrid(
                mobileColumns: 1,
                tabletColumns: 2,
                desktopColumns: 3,
                children: List.generate(
                  6,
                  (index) => Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: ResponsiveText(
                        'Card ${index + 1}',
                        baseFontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),

              // Responsive Row that becomes Column on mobile
              ResponsiveRow(
                wrapOnMobile: true,
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      color: Colors.red.shade100,
                      child: const Center(child: Text('Left Content')),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 150,
                      color: Colors.green.shade100,
                      child: const Center(child: Text('Right Content')),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
