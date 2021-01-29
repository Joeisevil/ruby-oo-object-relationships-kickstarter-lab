class Project
    attr_accessor :title, :backers

    def initialize(title)
        @title = title
        @backers = []
    end

    def add_backer(backer)
        ProjectBacker.new(self,backer)
    end
    def backers
        ProjectBacker.all.collect do |backers|
            if self == backers.project
                backers.backer
            end
        end.compact
    end
end