class MsmController < ApplicationController
  def actors
    @list_of_actors = Actor.all
    render({ :template => "msm_templates/actors"})
  end
  def actor
    @id = params.fetch(:id)
    a = Actor.where({ :id => @id}).at(0)
    @name = a.name
    @dob = a.dob
    @bio = a.bio
    @image = a.image
    @created = a.created_at
    @updated = a.updated_at
    render({ :template => "msm_templates/actor"})
  end
end
