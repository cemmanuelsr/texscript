from .Token import Token


class FunctionToken(Token):
    def __init__(self, value) -> None:
        super().__init__(value)


class WriteToken(FunctionToken):
    def __init__(self) -> None:
        super().__init__('Write')

    @property
    def type(self) -> str:
        return 'Write'


class ReadToken(FunctionToken):
    def __init__(self) -> None:
        super().__init__('Read')

    @property
    def type(self) -> str:
        return 'READ'
