from .Token import Token


class BracketToken(Token):
    def __init__(self, value) -> None:
        super().__init__(value)


class OpenBracketToken(BracketToken):
    def __init__(self) -> None:
        super().__init__('{')

    @property
    def type(self) -> str:
        return 'OPEN BRACKET'


class CloseBracketToken(BracketToken):
    def __init__(self) -> None:
        super().__init__('}')

    @property
    def type(self) -> str:
        return 'CLOSE BRACKET'
