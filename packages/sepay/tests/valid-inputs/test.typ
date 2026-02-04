// Compile-only tests for valid EPC payload inputs
// These tests verify that valid inputs compile without errors

#import "../../src/epc.typ": epc-payload

// === Basic valid payloads ===

// Full payload with all fields
#let _ = epc-payload(
  "Max Mustermann",
  "DE89370400440532013000",
  bic: "COBADEFFXXX",
  amount: 123.45,
  reference: "INV-2024-001",
)

// Minimal valid payload (only required fields)
#let _ = epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 10.00,
)

// With text instead of reference
#let _ = epc-payload(
  "Red Cross",
  "BE72000000001616",
  bic: "BPOTBEB1",
  amount: 25.00,
  text: "Donation for good cause",
)

// With purpose code
#let _ = epc-payload(
  "Freelancer",
  "DE12500105170648489890",
  bic: "GENODEFF",
  amount: 1500.00,
  purpose: "CHAR",
  reference: "CTR-2024",
)

// Open amount (no amount specified) - e.g. for donations
#let _ = epc-payload(
  "Charity",
  "DE89370400440532013000",
)

// === BIC format variations ===

// 8-character BIC
#let _ = epc-payload(
  "Test",
  "DE89370400440532013000",
  bic: "COBADEFF",
  amount: 10.00,
)

// 11-character BIC
#let _ = epc-payload(
  "Test",
  "DE89370400440532013000",
  bic: "COBADEFFXXX",
  amount: 10.00,
)

// No BIC (optional field)
#let _ = epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 10.00,
)

// Various valid BICs from different countries
#let _ = epc-payload(
  "Test",
  "DE89370400440532013000",
  bic: "BPOTBEB1",
  amount: 10.00,
)

#let _ = epc-payload(
  "Test",
  "DE89370400440532013000",
  bic: "INGDDEFFXXX",
  amount: 10.00,
)

// === Edge cases: maximum field lengths ===

// Maximum amount
#let _ = epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 999999999.99,
)

// Maximum length name (70 chars)
#let _ = epc-payload(
  "A" * 70,
  "DE89370400440532013000",
  amount: 10.00,
)

// Maximum length reference (35 chars)
#let _ = epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 10.00,
  reference: "R" * 35,
)

// Maximum length text (140 chars)
#let _ = epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 10.00,
  text: "T" * 140,
)

// Maximum length purpose code (4 chars)
#let _ = epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 10.00,
  purpose: "CHAR",
)

// Maximum length information (70 chars)
#let _ = epc-payload(
  "Test",
  "DE89370400440532013000",
  amount: 10.00,
  information: "I" * 70,
)
