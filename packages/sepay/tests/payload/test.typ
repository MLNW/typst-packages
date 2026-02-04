// Compile-only tests for EPC payload generation
// These tests verify the payload string format conforms to EPC069-12

#import "../../src/epc.typ": epc-payload

// Test basic payload structure
#let payload = epc-payload(
  "Max Mustermann",
  "DE89370400440532013000",
  bic: "COBADEFFXXX",
  amount: 123.45,
  reference: "INV-2024-001",
)

// Verify payload starts with correct header
#assert(
  payload.starts-with("BCD\n002\n1\nSCT\n"),
  message: "Payload must start with EPC header",
)

// Verify payload contains BIC
#assert(payload.contains("COBADEFFXXX"), message: "Payload must contain BIC")

// Verify payload contains name
#assert(
  payload.contains("Max Mustermann"),
  message: "Payload must contain beneficiary name",
)

// Verify payload contains IBAN
#assert(
  payload.contains("DE89370400440532013000"),
  message: "Payload must contain IBAN",
)

// Verify payload contains amount in EUR format
#assert(
  payload.contains("EUR123.45"),
  message: "Payload must contain formatted amount",
)

// Verify payload contains reference
#assert(
  payload.contains("INV-2024-001"),
  message: "Payload must contain reference",
)

// Test payload with text instead of reference
#let payload-with-text = epc-payload(
  "Red Cross",
  "BE72000000001616",
  bic: "BPOTBEB1",
  amount: 25.00,
  text: "Donation",
)

#assert(
  payload-with-text.contains("Donation"),
  message: "Payload must contain text",
)

// Test payload with purpose code
#let payload-with-purpose = epc-payload(
  "Freelancer",
  "DE12500105170648489890",
  bic: "GENODEFF",
  amount: 1500.00,
  purpose: "CHAR",
  reference: "CTR-2024",
)

#assert(
  payload-with-purpose.contains("CHAR"),
  message: "Payload must contain purpose code",
)

// Test minimal payload (BIC optional)
#let minimal-payload = epc-payload(
  "Simple",
  "DE89370400440532013000",
  amount: 10.00,
)

#assert(
  minimal-payload.starts-with("BCD\n002\n1\nSCT\n"),
  message: "Minimal payload must have correct header",
)

// Test that IBAN with spaces is normalized
#let payload-with-spaces = epc-payload(
  "Test",
  "DE89 3704 0044 0532 0130 00",
  amount: 10.00,
)

#assert(
  payload-with-spaces.contains("DE89370400440532013000"),
  message: "IBAN spaces should be removed",
)

// Test open amount (no amount specified)
#let open-amount-payload = epc-payload(
  "Charity",
  "DE89370400440532013000",
)

#assert(
  not open-amount-payload.contains("EUR"),
  message: "Open amount payload should not contain EUR line",
)

// Test payload length constraint (max 331 bytes)
#let max-payload = epc-payload(
  "A" * 70,
  "DE89370400440532013000",
  bic: "COBADEFFXXX",
  amount: 999999999.99,
  purpose: "CHAR",
  reference: "R" * 35,
  information: "I" * 70,
)

#assert(
  bytes(max-payload).len() <= 331,
  message: "Payload must not exceed 331 bytes",
)
