import 'package:auto_route/auto_route.dart';
import 'package:clean_arch_core/clean_arch_core.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AppSettingsPage extends StatefulWidget {
  const AppSettingsPage({super.key});

  @override
  State<AppSettingsPage> createState() => _AppSettingsPageState();
}

class _AppSettingsPageState extends State<AppSettingsPage> {
  @override
  Widget build(BuildContext context) {
    final themeSetting = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('App Theme'),
        DropdownButton<ThemeMode>(
          items: const [
            DropdownMenuItem(
              value: ThemeMode.system,
              child: Text('System'),
            ),
            DropdownMenuItem(
              value: ThemeMode.light,
              child: Text('Light'),
            ),
            DropdownMenuItem(
              value: ThemeMode.dark,
              child: Text('Dark'),
            ),
          ],
          value: context.watch<ThemeModeCubit>().state,
          onChanged: (value) {
            context.read<ThemeModeCubit>().setThemeMode(value!);
          },
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text('App Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: [
          themeSetting,
        ],
      ),
    );
  }
}
