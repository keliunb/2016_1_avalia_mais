class ManagementsController < ApplicationController

	def index
		@attaches = Attach.all.order(:cnpj)	
		@topic_ordered = Topic.joins(:denunciations).select('topics.*, count(*) as denunciations_count').group('topics.id').order('denunciations_count DESC')
	end

end