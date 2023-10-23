import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const contact());
}

class contact extends StatelessWidget {
  const contact({Key? key}) : super(key: key);

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contact Me'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildContactButton(
                icon: Icons.email,
                label: 'Email',
                onPressed: () {
                  _launchURL('mailto:your.email@example.com');
                },
              ),
              _buildContactButton(
                icon: FontAwesomeIcons.github,
                label: 'GitHub',
                onPressed: () {
                  _launchURL('https://github.com/yourusername');
                },
              ),
              _buildContactButton(
                icon: FontAwesomeIcons.linkedinIn,
                label: 'LinkedIn',
                onPressed: () {
                  _launchURL('https://www.linkedin.com/in/yourusername');
                },
              ),
              _buildContactButton(
                icon: FontAwesomeIcons.instagram,
                label: 'Instagram',
                onPressed: () {
                  _launchURL('https://www.instagram.com/yourusername');
                },
              ),
              _buildContactButton(
                icon: FontAwesomeIcons.twitch,
                label: 'Twitter',
                onPressed: () {
                  _launchURL('https://twitter.com/yourusername');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactButton({
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: Icon(icon),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
  }
}
