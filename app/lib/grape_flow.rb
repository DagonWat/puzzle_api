module GrapeFlow
  def run_flow(flow, *dependencies)
    params = _attributes_from_params.merge(_attributes_from(dependencies))

    result = flow.trigger(params)

    _assign_vars(result)

    p @state.user

    raise Exceptions::DataInvalid, @state.errors.full_messages.join('. ') if @state.errors.present?

    yield(result) if result.success? && block_given?
  end

  private

  def _assign_vars(result)
    @result = result
    @state = result.state
  end


  def _attributes_from_params
    {}.tap do |hash|
      params.each do |key, value|
        hash[key.to_sym] = value
      end
    end
  end

  def _attributes_from(dependencies)
    dependencies[0].is_a?(Hash) ? dependencies[0] : {}
  end
end
