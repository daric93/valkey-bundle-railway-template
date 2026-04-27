# Valkey Bundle Template

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/template/TEMPLATE_CODE?referralCode=YOUR_CODE)

This template deploys the official [Valkey Bundle](https://hub.docker.com/r/valkey/valkey-bundle) Docker image on Railway with all modules (JSON, Bloom, Search, LDAP), automatic password generation, persistent storage, and connection variables.

## Features

- 🔒 Auto-generated secure password
- 🌐 Automatic host and port configuration
- 📦 Valkey Bundle with all modules (JSON, Bloom, Search, LDAP)
- 💾 Persistent storage via volume mount
- ⚡ Ready-to-use connection variables
- 🔗 Private networking support

## Included Modules

- **Valkey JSON** — Native JSON data type support
- **Valkey Bloom** — Probabilistic data structures (Bloom filters, Cuckoo filters, etc.)
- **Valkey Search** — Full-text search and secondary indexing
- **Valkey LDAP** — LDAP authentication support

## Environment Variables

The following variables are automatically configured:

- `VALKEY_URL` - Complete connection string
- `VALKEYHOST` - Valkey server hostname
- `VALKEYPORT` - Valkey server port
- `VALKEYUSER` - Valkey username (default: "default")
- `VALKEYPASSWORD` - Auto-generated secure password

## Usage

After deployment, use the `VALKEY_URL` environment variable to connect from your applications.

Since Valkey maintains Redis API compatibility, you can use any Redis client library:

```javascript
import { createClient } from "redis";

const client = createClient({ url: process.env.VALKEY_URL });
await client.connect();
```

```python
import redis
import os

client = redis.from_url(os.environ["VALKEY_URL"])
```

## Links

- [Valkey Bundle on Docker Hub](https://hub.docker.com/r/valkey/valkey-bundle)
- [Valkey Bundle GitHub Repository](https://github.com/valkey-io/valkey-bundle)
- [Valkey Official Documentation](https://valkey.io/docs/)
