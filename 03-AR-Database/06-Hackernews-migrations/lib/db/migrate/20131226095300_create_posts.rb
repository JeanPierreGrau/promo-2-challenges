class CreatePosts < ActiveRecord::Migration
  def up
    #TODO: your code here to create the Posts table
    create_post(:posts) do |post|

      post.string  :name
      post.string  :source_url
      post.string  :date

  end
end

