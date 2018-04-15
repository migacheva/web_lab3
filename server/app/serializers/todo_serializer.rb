class TodoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :text, :priority
end
