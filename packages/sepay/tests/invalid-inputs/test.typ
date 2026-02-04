// Tests for invalid inputs that should panic
// Uses tytanic's assert-panic (provided by tytanic's test library, no import needed)

#import "../../src/epc.typ": epc-payload

// === Missing required fields ===

// Missing beneficiary name (empty string)
#assert-panic(() => epc-payload(
  "",
  "DE89370400440532013000",
  amount: 10.00,
))

// === Field length violations ===

// Beneficiary name too long (> 70 characters)
#assert-panic(() => epc-payload(
  "A" * 71,
  "DE89370400440532013000",
  amount: 10.00,
))

// Purpose code too long (> 4 characters)
#assert-panic(() => epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 10.00,
  purpose: "CHARS",
))

// Reference too long (> 35 characters)
#assert-panic(() => epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 10.00,
  reference: "R" * 36,
))

// Text too long (> 140 characters)
#assert-panic(() => epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 10.00,
  text: "T" * 141,
))

// Information too long (> 70 characters)
#assert-panic(() => epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 10.00,
  information: "I" * 71,
))

// === Mutually exclusive fields ===

// Both reference and text specified
#assert-panic(() => epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 10.00,
  reference: "REF-001",
  text: "Payment text",
))

// === Amount range violations ===

// Amount too small (< 0.01)
#assert-panic(() => epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 0.001,
))

// Amount too large (> 999999999.99)
#assert-panic(() => epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 1000000000.00,
))

// === BIC validation errors ===

// BIC too short (< 8 characters)
#assert-panic(() => epc-payload(
  "Test",
  "DE89370400440532013000",
  bic: "COBADE",
  amount: 10.00,
))

// BIC wrong length (9 characters - must be 8 or 11)
#assert-panic(() => epc-payload(
  "Test",
  "DE89370400440532013000",
  bic: "COBADEFF1",
  amount: 10.00,
))

// BIC too long (> 11 characters)
#assert-panic(() => epc-payload(
  "Test",
  "DE89370400440532013000",
  bic: "COBADEFFXXXX",
  amount: 10.00,
))

// BIC with invalid characters (contains special character)
#assert-panic(() => epc-payload(
  "Test",
  "DE89370400440532013000",
  bic: "COBA-EFF",
  amount: 10.00,
))

// BIC with spaces
#assert-panic(() => epc-payload(
  "Test",
  "DE89370400440532013000",
  bic: "COBA DEFF",
  amount: 10.00,
))

// === IBAN validation errors (handled by ibanator) ===

// Invalid IBAN checksum
#assert-panic(() => epc-payload(
  "Test",
  "DE00370400440532013000",
  amount: 10.00,
))

// Invalid IBAN format
#assert-panic(() => epc-payload(
  "Test",
  "INVALID",
  amount: 10.00,
))
