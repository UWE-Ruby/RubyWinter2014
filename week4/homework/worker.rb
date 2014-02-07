class Worker

    def work(block=1)
        yields = 0
        block.times do
            yields = yield
        end
        yields
    end
end
