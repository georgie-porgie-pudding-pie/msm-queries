class MsmController < ApplicationController
  def actors
    @list_of_actors = Actor.all
    render({ :template => "msm_templates/actors"})
  end
  def actor
    @id = params.fetch(:id)
    @list_of_characters = Character.where({ :actor_id => @id})
    a = Actor.where({ :id => @id}).at(0)
    @name = a.name
    @dob = a.dob
    @bio = a.bio
    @image = a.image
    @created = a.created_at
    @updated = a.updated_at
    render({ :template => "msm_templates/actor"})
  end
  def movies
    @list_of_movies = Movie.all
    render({ :template => "msm_templates/movies"})
  end
  def movie
    @id = params.fetch(:id)
    a = Movie.where({ :id => @id}).at(0)
    d = Director.where({ :id => a.director_id}).at(0)
    @title = a.title
    @year = a.year
    @duration = a.duration
    @description = a.description
    @image = a.image
    @director = d.name
    @created = a.created_at
    @updated = a.updated_at
    render({ :template => "msm_templates/movie"})
  end
  def directors
    @list_of_directors = Director.all
    render({ :template => "msm_templates/directors"})
  end
  def director    
    @id = params.fetch(:id)
    @list_of_movies = Movie.where({ :director_id => @id})
    a = Director.where({ :id => @id}).at(0)
    @name = a.name
    @dob = a.dob
    @bio = a.bio
    @image = a.image
    @created = a.created_at
    @updated = a.updated_at
    render({ :template => "msm_templates/director"})
  end
  def youngest
    a = Director.where.not({ :dob => nil}).order({ :dob => :asc})
    @youngest_director = a.at(0)
    render({ :template => "msm_templates/youngest"})
  end
  def eldest
    a = Director.where.not({ :dob => nil}).order({ :dob => :desc})
    @eldest_director = a.at(0)
    render({ :template => "msm_templates/eldest"})
  end
end
