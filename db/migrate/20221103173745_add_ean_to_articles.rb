# frozen_string_literal: true

class AddEanToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :ean, :string
  end
end
