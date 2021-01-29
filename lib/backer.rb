class Backer
    attr_reader :name, :projects
    def initialize(name)
        @name = name
        projects = []
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end
    
    def backed_projects
        ProjectBacker.all.collect do |backed_projects|
            if self == backed_projects.backer
                backed_projects.project
            end
        end.compact
    end
end
