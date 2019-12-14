require 'benchmark/ips'

class FindPresentVsAnyController < ApplicationController
  def index
    100.times do
      Article.create!(title: 'ほげ')
    end

    articles = Article.all.count

    Benchmark.ips do |x|
      x.report "Article#find with present?" do
        if articles.find { |article| article.title == 'ほげ' }.present?
          'exists'
        else
          'not exists'
        end
      end

      x.report "Article#any?" do
        if articles.any? { |article| article.title == 'ほげ' }
          'exists'
        else
          'not exists'
        end
      end
    end
  end
end
