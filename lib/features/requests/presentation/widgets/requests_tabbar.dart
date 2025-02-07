import 'package:flutter/material.dart';
import 'package:flutter_post/features/common/presentation/widgets/custom_radio_button.dart';
import 'package:flutter_post/features/common/presentation/widgets/h_fixed_spacing.dart';

class RequestsTabBar extends StatefulWidget {
  const RequestsTabBar({super.key});

  @override
  State<RequestsTabBar> createState() => _RequestsTabBarState();
}

class _RequestsTabBarState extends State<RequestsTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 500,
          child: TabBar(
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.white.withOpacity(0.5),
            labelColor: Colors.white,
            controller: _tabController,
            tabs: const [
              Tab(text: 'Params'),
              Tab(text: 'Authorization'),
              Tab(text: 'Headers'),
              Tab(text: 'Body'),
            ],
          ),
        ),
        SizedBox(
          height: 300,
          child: TabBarView(
            controller: _tabController,
            children: [
              const Center(child: Text('Página de Búsqueda', style: TextStyle(color: Colors.white))),
              const Center(child: Text('Página de Notificaciones', style: TextStyle(color: Colors.white))),
              const Center(child: Text('Página de Ajustes', style: TextStyle(color: Colors.white))),
              Container(
                padding: const EdgeInsets.only(
                  top: 16
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomRadioButton(
                          value: 'none',
                          groupValue: 'none',
                          label: 'none',
                          onChanged: (value) {},
                        ),
                        const HFixedSpacing(16),
                        CustomRadioButton(
                          value: 'form-data',
                          groupValue: 'none',
                          label: 'form-data',
                          onChanged: (value) {},
                        ),
                        const HFixedSpacing(16),
                        CustomRadioButton(
                          value: 'x-www-form-urlencoded',
                          groupValue: 'none',
                          label: 'x-www-form-urlencoded',
                          onChanged: (value) {},
                        ),
                        const HFixedSpacing(16),
                        CustomRadioButton(
                          value: 'raw',
                          groupValue: 'none',
                          label: 'raw',
                          onChanged: (value) {},
                        ),
                        const HFixedSpacing(16),
                        CustomRadioButton(
                          value: 'binary',
                          groupValue: 'none',
                          label: 'binary',
                          onChanged: (value) {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}