require 'benchmark/ips'

class CountVsAnyActiveRecordCountController < ApplicationController
  def index
    100.times do
      Article.create!(title: 'ほげ')
    end

    articles = Article.all
    
    Benchmark.ips do |x|
      x.report "Article#count" do
        if articles.count > 0
          'exists'
        else
          'not exists'
        end
      end

      x.report "Article#exists?" do
        if articles.exists?
          'exists'
        else
          'not exists'
        end
      end
    end
  end
end
