module QueView
  # == Schema Information
  #
  # Table name: que_jobs
  #
  #  priority    :integer          default(100), not null
  #  run_at      :datetime         not null
  #  job_id      :integer          not null
  #  job_class   :text             not null
  #  args        :json             default([]), not null
  #  error_count :integer          default(0), not null
  #  last_error  :text
  #  queue       :text             default(""), not null, primary key
  #

  # the database table that Que uses to store scheduled jobs
  class QueJob < ActiveRecord::Base
    self.table_name = "que_jobs"
  end
end
