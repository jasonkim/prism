ProgramNode(0...37)(
  ScopeNode(0...0)([]),
  StatementsNode(0...37)(
    [BreakNode(0...5)(nil, (0...5)),
     BreakNode(7...16)(
       ArgumentsNode(13...16)(
         [CallNode(13...16)(
            nil,
            nil,
            IDENTIFIER(13...16)("foo"),
            nil,
            nil,
            nil,
            nil,
            "foo"
          )]
       ),
       (7...12)
     ),
     BreakNode(18...25)(
       ArgumentsNode(23...25)(
         [ParenthesesNode(23...25)(nil, (23...24), (24...25))]
       ),
       (18...23)
     ),
     BreakNode(27...37)(
       ArgumentsNode(32...37)(
         [ParenthesesNode(32...37)(
            StatementsNode(33...36)(
              [CallNode(33...36)(
                 nil,
                 nil,
                 IDENTIFIER(33...36)("foo"),
                 nil,
                 nil,
                 nil,
                 nil,
                 "foo"
               )]
            ),
            (32...33),
            (36...37)
          )]
       ),
       (27...32)
     )]
  )
)