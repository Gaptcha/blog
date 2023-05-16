module Visible
    extend ActiveSupport::Concern
    included do
        validates :status, inclusion: {in:['public', 'private', 'archived']}
        scope :visible, -> {where(status:'public')}
        scope :archived, -> {where(status:'archived')}
    end
    def archived?
        status == 'archived'  
    end

    def public?
        status == 'public'  
    end
    
end