class TransactionBuilder
    BUILD = [ClientBuild.new, TransactionBuild.new]
    def initialize
    end

    def test(pos)
        BUILD[pos].saludo
    end
end