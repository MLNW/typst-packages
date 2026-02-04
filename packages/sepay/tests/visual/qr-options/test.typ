// Persistent rendering tests for EPC QR code rendering options

#import "../../../src/lib.typ": epc-qr-code

#set page(width: auto, height: auto, margin: 1cm)
#set text(9pt)

= Customization Options

#grid(
  columns: (4.5cm, 4.5cm, 4.5cm),
  column-gutter: 0.8em,
  row-gutter: 2em,
  align: center,

  // Test 1: Default options
  box(width: 100%)[
    #text(weight: "bold", size: 10pt)[Default Options]
    #v(0.3em)
    #epc-qr-code(
      "Test Person",
      "DE89370400440532013000",
      bic: "COBADEFFXXX",
      amount: 42.00,
      reference: "TEST-001",
      width: 3cm,
      height: 3cm,
    )
    #v(0.3em)
    #text(size: 8pt)[Default quiet zone: true]
  ],

  // Test 2: No quiet zone
  box(width: 100%)[
    #text(weight: "bold", size: 10pt)[No Quiet Zone]
    #v(0.3em)
    #epc-qr-code(
      "Test Person",
      "DE89370400440532013000",
      bic: "COBADEFFXXX",
      amount: 42.00,
      reference: "TEST-001",
      width: 3cm,
      height: 3cm,
      quiet-zone: false,
    )
    #v(0.3em)
    #text(size: 8pt)[Quiet zone disabled]
  ],

  // Test 3: Custom colors (inverted)
  box(width: 100%)[
    #text(weight: "bold", size: 10pt)[Inverted Colors]
    #v(0.3em)
    #epc-qr-code(
      "Test Person",
      "DE89370400440532013000",
      bic: "COBADEFFXXX",
      amount: 42.00,
      reference: "TEST-001",
      width: 3cm,
      height: 3cm,
      dark-color: white,
      light-color: black,
    )
    #v(0.3em)
    #text(size: 8pt)[White on black]
  ],

  // Test 4: Blue color scheme
  box(width: 100%)[
    #text(weight: "bold", size: 10pt)[Blue Theme]
    #v(0.3em)
    #epc-qr-code(
      "Test Person",
      "DE89370400440532013000",
      bic: "COBADEFFXXX",
      amount: 42.00,
      reference: "TEST-001",
      width: 3cm,
      height: 3cm,
      dark-color: rgb("#1a365d"),
      light-color: rgb("#ebf8ff"),
    )
    #v(0.5em)
    #text(size: 8pt)[Custom blue colors]
  ],

  // Test 5: Different size
  box(width: 100%)[
    #text(weight: "bold", size: 10pt)[Large Size]
    #v(0.3em)
    #epc-qr-code(
      "Test Person",
      "DE89370400440532013000",
      bic: "COBADEFFXXX",
      amount: 42.00,
      reference: "TEST-001",
      width: 3.5cm,
      height: 3.5cm,
    )
    #v(0.3em)
    #text(size: 8pt)[3.5cm × 3.5cm]
  ],

  // Test 6: Small size
  box(width: 100%)[
    #text(weight: "bold", size: 10pt)[Small Size]
    #v(0.3em)
    #epc-qr-code(
      "Test Person",
      "DE89370400440532013000",
      bic: "COBADEFFXXX",
      amount: 42.00,
      reference: "TEST-001",
      width: 2cm,
      height: 2cm,
      quiet-zone: false,
    )
    #v(0.3em)
    #text(size: 8pt)[2cm × 2cm, no quiet zone]
  ],
)

#v(1em)

= Size Comparison

#pad(left: 3.5em)[

  #grid(
    columns: 4,
    column-gutter: 2em,
    row-gutter: 2em,
    align: center + horizon,

    [
      #epc-qr-code(
        "Test Person",
        "DE89370400440532013000",
        bic: "COBADEFFXXX",
        amount: 42.00,
        reference: "TEST-001",
        width: 1cm,
        height: 1cm,
        quiet-zone: false,
      )
      #v(0.3em)
      #text(size: 8pt)[1cm]
    ],
    [
      #epc-qr-code(
        "Test Person",
        "DE89370400440532013000",
        bic: "COBADEFFXXX",
        amount: 42.00,
        reference: "TEST-001",
        width: 2cm,
        height: 2cm,
        quiet-zone: false,
      )
      #v(0.3em)
      #text(size: 8pt)[2cm]
    ],
    [
      #epc-qr-code(
        "Test Person",
        "DE89370400440532013000",
        bic: "COBADEFFXXX",
        amount: 42.00,
        reference: "TEST-001",
        width: 3cm,
        height: 3cm,
        quiet-zone: false,
      )
      #v(0.3em)
      #text(size: 8pt)[3cm]
    ],
    [
      #epc-qr-code(
        "Test Person",
        "DE89370400440532013000",
        bic: "COBADEFFXXX",
        amount: 42.00,
        reference: "TEST-001",
        width: 4cm,
        height: 4cm,
        quiet-zone: false,
      )
      #v(0.3em)
      #text(size: 8pt)[4cm]
    ],
  )
]
