{ name = "quickcheck"
, backend = "purerl"
, dependencies =
  [ "arrays",
    "console",
    "control",
    "effect",
    "either",
    "enums",
    "exceptions",
    "foldable-traversable",
    "gen",
    "identity",
    "integers",
    "lazy",
    "lcg",
    "lists",
    "math",
    "maybe",
    "newtype",
    "nonempty",
    "partial",
    "prelude",
    "record",
    "strings",
    "tailrec",
    "transformers",
    "tuples",
    "unfoldable"
  ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs" ]
}
