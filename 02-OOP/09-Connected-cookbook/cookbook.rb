require 'csv'
require_relative 'recipe'

class Cookbook

attr_accessor :file, :recipe

  def initialize(file)
    # TODO: Retrieve the data from your CSV file and store it in an instance variable
    @file = file
    @recipes = csv_to_array(@file)
  end

    # TODO: Implement the methods to retrieve all recipes, create, or destroy recipes
    # TODO: Implement a save method that will write the data into the CSV
    # And don't forget to use this save method when you have to modify something in your recipes array.
  def all
    @contents
  end

  def scrap(ingredient)
    scraper = ScraperMarmiton.new(ingredient)
    scraper.doc.search('.m_search_result').each do |element|
    name = element.search('m_search_titre_recette > a').inner_text
    rating = element.search('.etoile1').size
    preparation_time = 10
    create(name, rating, preparation_time, cooking_time)


  def create(name, rating, cook_time, prep_time)
    @contents << Recipe.new(name, rating, cook_time, prep_time)
    save
  end

  def destroy(index)
    @contents.delete_at(index)
    save
  end

  def save
    CSV.open(@file, "w") do |csv|
    @contents.each {|recipe| csv << [recipe.name, recipe.rating, recipe.cook_time, recipe.prep_cook]}
    end
  end

  def csv_to_array(file_name)
    @contents = []
    CSV.foreach(file_name) do |row|
    @contents << Recipe.new(rox[0],row[1].to_i, row[2].to_i, row[3].to_i)
    end
  end

end

mycookbook = Cookbook.new("lib/recipes.csv")
mycookbook.scrap("Pommes")
mycookbook.all.each do |recipe|

p recipe

end

