module Types
  class MediaRequestStatusEnum < Types::BaseEnum
    value "PENDING", value: "pending", description: "Waiting for a response"
    value "IDLE",    value: "idle",    description: "No action"
    value "FINISHED",    value: "finished",    description: "Request complete"
    value "FAILED",    value: "failed",    description: "Request failed"
  end
end
