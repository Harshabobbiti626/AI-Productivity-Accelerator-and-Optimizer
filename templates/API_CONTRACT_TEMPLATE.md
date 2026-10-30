---
openapi: "3.1.0"
info:
  title: "[Service Name] API Specification"
  version: "1.0.0"
endpoint: "[METHOD] /api/v1/[resource]"
auth_scheme: "Bearer JWT / OAuth2"
rate_limit: "100 req/min/IP"
idempotency_supported: true
---

# API CONTRACT SPECIFICATION (REST / RFC 7807)

## 📌 Metadata & Service Context
- **Service**: `[service-name]`
- **Route**: `[METHOD] /api/v1/[resource]`
- **Authorization**: Bearer JWT (Required Scopes: `[resource:read]`, `[resource:write]`)
- **Rate Limit Policy**: 100 requests / minute / IP (Burst: 20 req/sec)

---

## 1. Request Headers

| Header Name | Type | Required? | Description / Standard |
| :--- | :--- | :--- | :--- |
| `Authorization` | string | Yes | `Bearer <access_token>` |
| `Content-Type` | string | Yes | `application/json` |
| `Idempotency-Key` | string (UUIDv4) | Recommended | Ensures exactly-once execution on mutations (`POST`, `PUT`, `PATCH`) |
| `X-Request-Id` | string (UUIDv4) | Optional | Distributed trace correlation identifier (propagated via W3C `traceparent`) |

---

## 2. Request Parameters & Body

### URL & Query Parameters (Cursor-Based Pagination & Filters):
```http
GET /api/v1/[resource]?limit=20&cursor=eyJpZCI6MTAwfQ==&status=ACTIVE&sort=created_at:desc
```

| Parameter | In | Type | Required | Default | Description |
| :--- | :--- | :--- | :--- | :--- | :--- |
| `limit` | query | integer | No | 20 | Number of records to return (1-100, clamped). |
| `cursor` | query | string (base64) | No | null | Opaque cursor pointing to the last evaluated item. |
| `status` | query | string | No | null | Filter by resource lifecycle state. |

### JSON Request Body (for Mutations):
```json
{
  "customer_id": "usr_01HXYZ1234567890ABCDEF",
  "items": [
    {
      "product_id": "prd_01HXYZ9876543210FEDCBA",
      "quantity": 2,
      "unit_price_cents": 2999
    }
  ],
  "shipping_address": {
    "line1": "100 Market St",
    "city": "San Francisco",
    "state": "CA",
    "postal_code": "94105",
    "country": "US"
  }
}
```

---

## 3. Success Responses (HTTP 200 / 201)

### Response Headers:
```http
Content-Type: application/json
X-Request-Id: req_01HXYZ1234567890ABCDEF
X-RateLimit-Limit: 100
X-RateLimit-Remaining: 98
X-RateLimit-Reset: 1730275200
```

### JSON Success Payload (Paginated Collection):
```json
{
  "data": [
    {
      "id": "ord_01HXYZ9999999999AAAAAA",
      "status": "PENDING",
      "total_cents": 5998,
      "currency": "USD",
      "created_at": "2026-10-30T10:00:00.000Z",
      "updated_at": "2026-10-30T10:00:00.000Z"
    }
  ],
  "pagination": {
    "cursor": "eyJpZCI6MTAwfQ==",
    "has_more": true,
    "limit": 20,
    "total_count": 142
  },
  "meta": {
    "server_time": "2026-10-30T10:00:00.120Z",
    "request_id": "req_01HXYZ1234567890ABCDEF"
  }
}
```

---

## 4. Standardized Error Responses (RFC 7807 Problem Details)

Every 4xx/5xx error returns `application/problem+json`:

### 401 Unauthorized (Missing or Invalid Authentication):
```json
{
  "type": "https://api.example.com/errors/unauthorized",
  "title": "Unauthorized",
  "status": 401,
  "detail": "Bearer token is expired, missing, or cryptographically invalid.",
  "instance": "/api/v1/[resource]"
}
```

### 403 Forbidden (Insufficient Scopes / Tenant Isolation BOLA/IDOR):
```json
{
  "type": "https://api.example.com/errors/forbidden",
  "title": "Forbidden",
  "status": 403,
  "detail": "Authenticated identity does not possess ownership or required permission '[resource:write]'.",
  "instance": "/api/v1/[resource]/ord_01HXYZ..."
}
```

### 422 Unprocessable Entity (Schema Boundary Validation Failure):
```json
{
  "type": "https://api.example.com/errors/validation-failed",
  "title": "Validation Failed",
  "status": 422,
  "detail": "The payload contains 2 invalid fields.",
  "instance": "/api/v1/[resource]",
  "invalid_params": [
    {
      "name": "items[0].quantity",
      "reason": "Quantity must be an integer greater than or equal to 1"
    },
    {
      "name": "shipping_address.postal_code",
      "reason": "Postal code must conform to US 5-digit regex"
    }
  ]
}
```

### 409 Conflict (Concurrency & Idempotency Duplicate In-Flight):
```json
{
  "type": "https://api.example.com/errors/conflict",
  "title": "Resource Conflict",
  "status": 409,
  "detail": "An operation with Idempotency-Key 'd3b07384d113' is currently processing or entity version has changed.",
  "instance": "/api/v1/[resource]"
}
```

### 429 Too Many Requests (Rate Limit Exceeded):
```json
{
  "type": "https://api.example.com/errors/rate-limit-exceeded",
  "title": "Too Many Requests",
  "status": 429,
  "detail": "Quota exceeded. 100 requests per minute limit reached.",
  "instance": "/api/v1/[resource]",
  "retry_after_seconds": 24
}
```

### 503 Service Unavailable (Downstream Circuit Breaker / Timeout):
```json
{
  "type": "https://api.example.com/errors/service-unavailable",
  "title": "Service Unavailable",
  "status": 503,
  "detail": "Upstream payment provider timed out after 3000ms. Local transaction rolled back safely.",
  "instance": "/api/v1/[resource]",
  "retry_after_seconds": 5
}
```

---

## 5. Mock Service Worker (MSW) Contract Stub

Use for instantaneous frontend development decoupling:

```typescript
// mocks/handlers.ts
import { http, HttpResponse } from 'msw';

export const handlers = [
  http.get('/api/v1/[resource]', ({ request }) => {
    return HttpResponse.json({
      data: [{ id: 'mock_1', status: 'ACTIVE' }],
      pagination: { cursor: null, has_more: false, limit: 20 },
      meta: { request_id: 'mock_req' }
    });
  }),
];
```
