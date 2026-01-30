import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const _settings = [
    ('Account Security', Icons.lock_outline),
    ('Order History', Icons.history),
    ('Saved Addresses', Icons.location_on_outlined),
    ('Payment Methods', Icons.credit_card),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 48,
                    backgroundColor: theme.colorScheme.primary.withOpacity(.15),
                    child: const Icon(Icons.person, size: 48),
                  ),
                  const SizedBox(height: 12),
                  Text('Aarya Kulkarni', style: theme.textTheme.titleLarge),
                  Text(
                    'aarya@smartdine.app',
                    style: theme.textTheme.bodyMedium?.copyWith(color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text('Preferences', style: theme.textTheme.titleMedium),
            const SizedBox(height: 12),
            _SwitchTile(
              title: 'Push Notifications',
              subtitle: 'Promotions, table status & order updates',
              value: true,
            ),
            _SwitchTile(
              title: 'Dark Mode',
              subtitle: 'Match system appearance',
              value: false,
            ),
            const SizedBox(height: 16),
            Text('Settings', style: theme.textTheme.titleMedium),
            const SizedBox(height: 12),
            ..._settings.map(
              (item) => Card(
                child: ListTile(
                  leading: Icon(item.$2),
                  title: Text(item.$1),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text('Support', style: theme.textTheme.titleMedium),
            const SizedBox(height: 12),
            Card(
              child: ListTile(
                leading: const Icon(Icons.help_outline),
                title: const Text('Help Center'),
                subtitle: const Text('FAQs, live chat & tutorials'),
                trailing: FilledButton.tonalIcon(
                  onPressed: () {},
                  icon: const Icon(Icons.chat_bubble_outline),
                  label: const Text('Chat'),
                ),
              ),
            ),
            const SizedBox(height: 16),
            FilledButton.icon(
              onPressed: () {},
              style: FilledButton.styleFrom(minimumSize: const Size.fromHeight(48)),
              icon: const Icon(Icons.exit_to_app),
              label: const Text('Log out'),
            )
          ],
        ),
      ),
    );
  }
}

class _SwitchTile extends StatefulWidget {
  const _SwitchTile({
    required this.title,
    required this.subtitle,
    required this.value,
  });

  final String title;
  final String subtitle;
  final bool value;

  @override
  State<_SwitchTile> createState() => _SwitchTileState();
}

class _SwitchTileState extends State<_SwitchTile> {
  late bool _value = widget.value;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SwitchListTile.adaptive(
        value: _value,
        onChanged: (val) => setState(() => _value = val),
        title: Text(widget.title),
        subtitle: Text(widget.subtitle),
      ),
    );
  }
}
