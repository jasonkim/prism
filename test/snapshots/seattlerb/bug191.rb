ProgramNode(2...20)(
  [],
  StatementsNode(2...20)(
    [IfNode(2...9)(
       QUESTION_MARK(2...3)("?"),
       CallNode(0...1)(
         nil,
         nil,
         IDENTIFIER(0...1)("a"),
         nil,
         nil,
         nil,
         nil,
         "a"
       ),
       StatementsNode(4...6)(
         [StringNode(4...6)(
            STRING_BEGIN(4...5)("\""),
            STRING_CONTENT(5...5)(""),
            STRING_END(5...6)("\""),
            ""
          )]
       ),
       ElseNode(6...9)(
         (6...7),
         StatementsNode(8...9)(
           [CallNode(8...9)(
              nil,
              nil,
              IDENTIFIER(8...9)("b"),
              nil,
              nil,
              nil,
              nil,
              "b"
            )]
         ),
         nil
       ),
       nil
     ),
     IfNode(13...20)(
       QUESTION_MARK(13...14)("?"),
       CallNode(11...12)(
         nil,
         nil,
         IDENTIFIER(11...12)("a"),
         nil,
         nil,
         nil,
         nil,
         "a"
       ),
       StatementsNode(15...17)(
         [StringNode(15...17)(
            STRING_BEGIN(15...16)("'"),
            STRING_CONTENT(16...16)(""),
            STRING_END(16...17)("'"),
            ""
          )]
       ),
       ElseNode(17...20)(
         (17...18),
         StatementsNode(19...20)(
           [CallNode(19...20)(
              nil,
              nil,
              IDENTIFIER(19...20)("b"),
              nil,
              nil,
              nil,
              nil,
              "b"
            )]
         ),
         nil
       ),
       nil
     )]
  )
)
