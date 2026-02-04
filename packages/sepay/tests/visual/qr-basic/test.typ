// Persistent rendering tests for basic EPC QR code generation

#import "../../../src/lib.typ": epc-qr-code

#set page(width: auto, height: auto, margin: 1cm)
#set text(9pt)

= Usage Examples

#grid(
  columns: (5cm, 5cm, 5cm),
  column-gutter: 0.8em,
  row-gutter: 2em,
  align: center,

  // Test 1: Standard payment with reference
  box(width: 100%)[
    #text(weight: "bold", size: 10pt)[Standard Payment]
    #v(0.3em)
    #epc-qr-code(
      "Max Mustermann",
      "DE89 3704 0044 0532 0130 00",
      bic: "COBADEFFXXX",
      amount: 123.45,
      reference: "INV-2024-001",
      width: 3.5cm,
      height: 3.5cm,
    )
    #v(0.3em)
    #text(size: 8pt)[
      *Amount:* €123.45 \
      *Ref:* INV-2024-001
    ]
  ],

  // Test 2: Payment with free text
  box(width: 100%)[
    #text(weight: "bold", size: 10pt)[With Text]
    #v(0.3em)
    #epc-qr-code(
      "Red Cross",
      "BE72 0000 0000 1616",
      bic: "BPOTBEB1",
      amount: 25.00,
      text: "Donation for humanitarian aid",
      width: 3.5cm,
      height: 3.5cm,
    )
    #v(0.3em)
    #text(size: 8pt)[
      *Amount:* €25.00 \
      *Text:* Donation
    ]
  ],

  // Test 3: Payment with purpose code
  box(width: 100%)[
    #text(weight: "bold", size: 10pt)[With Purpose]
    #v(0.3em)
    #epc-qr-code(
      "Freelancer GmbH",
      "DE12 5001 0517 0648 4898 90",
      bic: "GENODEFF",
      amount: 1500.00,
      purpose: "CHAR",
      reference: "CTR-2024",
      width: 3.5cm,
      height: 3.5cm,
    )
    #v(0.3em)
    #text(size: 8pt)[
      *Amount:* €1500.00 \
      *Purpose:* CHAR
    ]
  ],

  // Test 4: Large amount
  box(width: 100%)[
    #text(weight: "bold", size: 10pt)[Large Amount]
    #v(0.3em)
    #epc-qr-code(
      "Business GmbH",
      "DE44 5001 0517 5407 3249 31",
      bic: "INGDDEFFXXX",
      amount: 9999.99,
      reference: "INV-999",
      width: 3.5cm,
      height: 3.5cm,
    )
    #v(0.3em)
    #text(size: 8pt)[
      *Amount:* €9999.99
    ]
  ],

  // Test 5: Minimal (no BIC)
  box(width: 100%)[
    #text(weight: "bold", size: 10pt)[Minimal]
    #v(0.3em)
    #epc-qr-code(
      "Simple Payment",
      "DE89370400440532013000",
      amount: 10.00,
      width: 3.5cm,
      height: 3.5cm,
    )
    #v(0.3em)
    #text(size: 8pt)[
      *Amount:* €10.00
    ]
  ],

  // Test 6: With information field
  box(width: 100%)[
    #text(weight: "bold", size: 10pt)[With Info]
    #v(0.3em)
    #epc-qr-code(
      "Service Provider",
      "DE89370400440532013000",
      bic: "COBADEFFXXX",
      amount: 50.00,
      reference: "SVC-001",
      information: "Thank you for your order!",
      width: 3.5cm,
      height: 3.5cm,
    )
    #v(0.3em)
    #text(size: 8pt)[
      *Amount:* €50.00
    ]
  ],
)
