ProgramNode(0...33)(
  [LABEL(16...17)("a")],
  StatementsNode(0...33)(
    [CaseNode(0...33)(
       HashNode(5...11)(
         (5...6),
         [AssocNode(6...10)(
            SymbolNode(6...8)(
              nil,
              LABEL(6...7)("a"),
              LABEL_END(7...8)(":"),
              "a"
            ),
            IntegerNode(9...10)(),
            nil
          )],
         (10...11)
       ),
       [InNode(12...29)(
          HashPatternNode(15...23)(
            nil,
            [AssocNode(16...18)(
               SymbolNode(16...18)(
                 nil,
                 LABEL(16...17)("a"),
                 LABEL_END(17...18)(":"),
                 "a"
               ),
               nil,
               nil
             ),
             AssocSplatNode(20...22)(nil, (20...22))],
            nil,
            (15...16),
            (22...23)
          ),
          StatementsNode(26...29)(
            [ArrayNode(26...29)(
               [LocalVariableReadNode(27...28)(0)],
               (26...27),
               (28...29)
             )]
          ),
          (12...14),
          nil
        )],
       nil,
       (0...4),
       (30...33)
     )]
  )
)
