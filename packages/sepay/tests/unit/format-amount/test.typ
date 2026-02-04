// Compile-only tests for amount formatting
// According to EPC069-12, amounts must use dot as decimal separator

#import "../../../src/helper.typ": format-amount

// Test integer amounts
#assert.eq(format-amount(1), "1.00", message: "Integer should have .00 suffix")
#assert.eq(format-amount(0), "0.00", message: "Zero should format as 0.00")
#assert.eq(
  format-amount(100),
  "100.00",
  message: "Larger integer should have .00 suffix",
)
#assert.eq(
  format-amount(999999999),
  "999999999.00",
  message: "Large integer should format correctly",
)

// Test decimal amounts
#assert.eq(
  format-amount(123.45),
  "123.45",
  message: "Standard decimal should format correctly",
)
#assert.eq(
  format-amount(0.99),
  "0.99",
  message: "Sub-euro amount should format correctly",
)
#assert.eq(
  format-amount(0.01),
  "0.01",
  message: "Minimum amount should format correctly",
)
#assert.eq(
  format-amount(999999999.99),
  "999999999.99",
  message: "Maximum amount should format correctly",
)

// Test single decimal place (should pad to two)
#assert.eq(
  format-amount(10.5),
  "10.50",
  message: "Single decimal should be padded",
)
#assert.eq(
  format-amount(1.1),
  "1.10",
  message: "Single decimal should be padded",
)

// Test rounding behavior (amounts are rounded to 2 decimal places)
#assert.eq(
  format-amount(9999.999),
  "10000.00",
  message: "Should round up when third decimal >= 5",
)
#assert.eq(
  format-amount(1.234),
  "1.23",
  message: "Should truncate to 2 decimals",
)
#assert.eq(format-amount(1.235), "1.24", message: "Should round up at .5")
#assert.eq(format-amount(1.236), "1.24", message: "Should round up when > .5")

// Test zero padding for cents
#assert.eq(
  format-amount(5.05),
  "5.05",
  message: "Should preserve leading zero in cents",
)
#assert.eq(
  format-amount(5.01),
  "5.01",
  message: "Should preserve leading zero in cents",
)
#assert.eq(
  format-amount(5.09),
  "5.09",
  message: "Should preserve leading zero in cents",
)
