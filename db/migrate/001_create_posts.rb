class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table(:posts) do |t|
    
    	t.string :title
    	t.string :partial_name
    	
    	#t.text :content
    	t.boolean :published
    	
    	t.datetime :published_at
    
      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end
