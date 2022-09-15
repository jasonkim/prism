# frozen_string_literal: true

require "test_helper"

class ParseTest < Test::Unit::TestCase
  include YARP::DSL

  test "binary" do
    assert_equal Binary(expression("1"), PLUS("+"), expression("2")), expression("1 + 2")
  end

  test "class variable" do
    assert_equal VariableReference(CLASS_VARIABLE("@@abc")), expression("@@abc")
  end

  test "false" do
    assert_equal VariableReference(KEYWORD_FALSE("false")), expression("false")
  end

  test "float" do
    assert_equal FloatLiteral(FLOAT("1.0")), expression("1.0")
  end

  test "global variable" do
    assert_equal VariableReference(GLOBAL_VARIABLE("$abc")), expression("$abc")
  end

  test "identifier" do
    assert_equal VariableReference(IDENTIFIER("a")), expression("a")
  end

  test "if modifier" do
    assert_equal IfModifier(expression("1"), KEYWORD_IF("if"), expression("true")), expression("1 if true")
  end

  test "imaginary" do
    assert_equal ImaginaryLiteral(IMAGINARY_NUMBER("1i")), expression("1i")
  end

  test "instance variable" do
    assert_equal VariableReference(INSTANCE_VARIABLE("@abc")), expression("@abc")
  end

  test "nil" do
    assert_equal VariableReference(KEYWORD_NIL("nil")), expression("nil")
  end

  test "rational" do
    assert_equal RationalLiteral(RATIONAL_NUMBER("1r")), expression("1r")
  end

  test "self" do
    assert_equal VariableReference(KEYWORD_SELF("self")), expression("self")
  end

  test "true" do
    assert_equal VariableReference(KEYWORD_TRUE("true")), expression("true")
  end

  test "unless modifier" do
    assert_equal UnlessModifier(expression("1"), KEYWORD_UNLESS("unless"), expression("true")), expression("1 unless true")
  end

  test "until modifier" do
    assert_equal UntilModifier(expression("1"), KEYWORD_UNTIL("until"), expression("true")), expression("1 until true")
  end

  test "while modifier" do
    assert_equal WhileModifier(expression("1"), KEYWORD_WHILE("while"), expression("true")), expression("1 while true")
  end

  test "TERM < FACTOR" do
    actual = expression("1 + 2 * 3")
    expected = Binary(
      expression("1"),
      PLUS("+"),
      Binary(expression("2"), STAR("*"), expression("3"))
    )

    assert_equal expected, actual
  end

  test "FACTOR < EXPONENT" do
    actual = expression("1 * 2 ** 3")
    expected = Binary(
      expression("1"),
      STAR("*"),
      Binary(expression("2"), STAR_STAR("**"), expression("3"))
    )

    assert_equal expected, actual
  end

  test "FACTOR > TERM" do
    actual = expression("1 * 2 + 3")
    expected = Binary(
      Binary(expression("1"), STAR("*"), expression("2")),
      PLUS("+"),
      expression("3")
    )

    assert_equal expected, actual
  end

  test "MODIFIER left associativity" do
    actual = expression("a if b if c")
    expected = IfModifier(
      IfModifier(expression("a"), KEYWORD_IF("if"), expression("b")),
      KEYWORD_IF("if"),
      expression("c")
    )

    assert_equal expected, actual
  end

  private

  def expression(source)
    YARP.parse(source) => YARP::Program[statements: YARP::Statements[body: [node]]]
    node
  end
end
