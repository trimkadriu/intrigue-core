module Intrigue
module Task
module Issue

  ###
  ### Helper method to create findings
  ###
  def _create_issue(details)
    # No need for a name in the hash now, remove it & pull out the name from the hash

    # check and make sure we're allowed to create issues
    # TODO

    _notify("New Issue! #{details[:name]}")
    
    hash = details.merge({ entity_id: @entity.id,
                           task_result_id: @task_result.id,
                           project_id: @project.id })

    _log_good "creating finding with name: #{details[:name]}"
    issue = Intrigue::Model::Issue.create(hash)
  end

end
end
end