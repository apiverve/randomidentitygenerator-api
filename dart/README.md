# Random Identity Generator API - Dart/Flutter Client

Random Identity Generator creates synthetic user profiles with realistic names, usernames, email addresses, phone numbers, and gender attributes. Paid plans add batch generation, birthdates, company details, and AI-generated avatars.

[![pub package](https://img.shields.io/pub/v/apiverve_randomidentitygenerator.svg)](https://pub.dev/packages/apiverve_randomidentitygenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Random Identity Generator API](https://apiverve.com/marketplace/randomidentitygenerator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_randomidentitygenerator: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_randomidentitygenerator/apiverve_randomidentitygenerator.dart';

void main() async {
  final client = RandomidentitygeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'count': 1,
      'includeAvatar': true
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "count": 1,
    "identities": [
      {
        "name": "Dr. Brent Carter",
        "username": "Fannie_Treutel28",
        "email": "Greyson.DAmore99@hotmail.com",
        "phone": "862-207-2982 x6455",
        "website": "mervin.net",
        "company": {
          "name": "Runolfsson, Gaylord and Christiansen",
          "catchPhrase": "Profit-focused didactic algorithm",
          "bs": "brand ubiquitous paradigms"
        },
        "gender": "Male",
        "birthdate": "1978-11-23",
        "cell": "1-514-413-1724",
        "avatar": "https://storage.googleapis.com/apiverve/APIResources/faces/Male/40-50/87654321.jpg?X-Goog-Signature=..."
      }
    ]
  }
}
```

## API Reference

- **API Home:** [Random Identity Generator API](https://apiverve.com/marketplace/randomidentitygenerator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/randomidentitygenerator](https://docs.apiverve.com/ref/randomidentitygenerator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
