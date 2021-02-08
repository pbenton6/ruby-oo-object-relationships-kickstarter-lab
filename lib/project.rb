class Project
    attr_accessor :title

    @@all = []
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end
    
    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers 
        project_backers = ProjectBacker.all.select do |project|
            project.project == self
        end
        project_backers.map do |project|
            project.backer
        end
    end
end