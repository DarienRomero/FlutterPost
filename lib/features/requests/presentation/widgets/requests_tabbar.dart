import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_post/features/common/presentation/widgets/custom_radio_button.dart';
import 'package:flutter_post/features/common/presentation/widgets/h_fixed_spacing.dart';
import 'package:highlight/languages/json.dart';
import 'package:json_editor/json_editor.dart';

class RequestsTabBar extends StatefulWidget {
  const RequestsTabBar({super.key});

  @override
  State<RequestsTabBar> createState() => _RequestsTabBarState();
}

class _RequestsTabBarState extends State<RequestsTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _controller = CodeController(
    text: '{\n  "name": "Flutter",\n  "version": "3.13.0"\n}', // JSON inicial
    language: json,
  );

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
                    ),
                    /* SizedBox(
                      height: 200,
                      child: CodeField(
                        controller: _controller,
                        textStyle: const TextStyle(fontFamily: 'monospace', fontSize: 16),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ), */
                    Container(
                      height: 200,
                      child: JsonEditor.string(
                        jsonString: '''
                            {
                                // This is a comment
                                "name": "young chan",
                                "number": 100,
                                "boo": true,
                                "user": {"age": 20, "tall": 1.8},
                                "cities": ["beijing", "shanghai", "shenzhen"]
                            }
                        ''',
                        onValueChanged: (value) {
                            print(value);
                        },
                    ),          
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