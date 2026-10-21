# Random Identity Generator API - PHP Package

Random Identity Generator creates synthetic user profiles with realistic names, usernames, email addresses, phone numbers, and gender attributes. Paid plans add batch generation, birthdates, company details, and AI-generated avatars.

## Installation

Install via Composer:

```bash
composer require apiverve/randomidentitygenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Randomidentitygenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'count' => 1,
    'includeAvatar' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Randomidentitygenerator\Client;
use APIVerve\Randomidentitygenerator\Exceptions\APIException;
use APIVerve\Randomidentitygenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['count' => 1, 'includeAvatar' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
```

## Example Response

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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/randomidentitygenerator?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/randomidentitygenerator?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/randomidentitygenerator?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
