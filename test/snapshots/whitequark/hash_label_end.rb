ProgramNode(0...50)(
  [],
  StatementsNode(0...50)(
    [CallNode(0...12)(
       nil,
       nil,
       IDENTIFIER(0...1)("f"),
       PARENTHESIS_LEFT(1...2)("("),
       ArgumentsNode(4...11)(
         [IfNode(4...11)(
            QUESTION_MARK(4...5)("?"),
            CallNode(2...3)(
              nil,
              nil,
              IDENTIFIER(2...3)("a"),
              nil,
              nil,
              nil,
              nil,
              "a"
            ),
            StatementsNode(6...9)(
              [StringNode(6...9)(
                 STRING_BEGIN(6...7)("\""),
                 STRING_CONTENT(7...8)("a"),
                 STRING_END(8...9)("\""),
                 "a"
               )]
            ),
            ElseNode(9...11)(
              (9...10),
              StatementsNode(10...11)([IntegerNode(10...11)()]),
              nil
            ),
            nil
          )]
       ),
       PARENTHESIS_RIGHT(11...12)(")"),
       nil,
       "f"
     ),
     HashNode(14...26)(
       BRACE_LEFT(14...15)("{"),
       [AssocNode(16...24)(
          SymbolNode(16...22)(
            STRING_BEGIN(16...17)("'"),
            STRING_CONTENT(17...20)("foo"),
            LABEL_END(20...22)("':"),
            "foo"
          ),
          IntegerNode(23...24)(),
          nil
        )],
       BRACE_RIGHT(25...26)("}")
     ),
     HashNode(28...50)(
       BRACE_LEFT(28...29)("{"),
       [AssocNode(30...38)(
          SymbolNode(30...36)(
            STRING_BEGIN(30...31)("'"),
            STRING_CONTENT(31...34)("foo"),
            LABEL_END(34...36)("':"),
            "foo"
          ),
          IntegerNode(37...38)(),
          nil
        ),
        AssocNode(40...49)(
          SymbolNode(40...46)(
            STRING_BEGIN(40...41)("'"),
            STRING_CONTENT(41...44)("bar"),
            LABEL_END(44...46)("':"),
            "bar"
          ),
          HashNode(47...49)(
            BRACE_LEFT(47...48)("{"),
            [],
            BRACE_RIGHT(48...49)("}")
          ),
          nil
        )],
       BRACE_RIGHT(49...50)("}")
     )]
  )
)
