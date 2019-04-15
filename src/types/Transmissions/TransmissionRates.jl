mutable struct TransmissionRates
  external::Vector{Float64}
  internal::Array{Float64, 2}
  individuals::Int64

  function TransmissionRates(individuals::Int64)
    return new(fill(0., individuals),
               fill(0., (individuals, individuals)),
               individuals)
  end

  function TransmissionRates(e::Vector{Float64},
                             i::Array{Float64, 2})
    @boundscheck if !(length(e) == size(i, 1) == size(i, 2))
      @error "Argument dimensions mismatched"
    end
    return new(e, i, length(e))
  end
end

function Base.copy(x::TransmissionRates)
  return TransmissionRates(copy(x.external),
                           copy(x.internal))
end

function Base.sum(x::TransmissionRates)
  return sum(x.external) + sum(x.internal)
end

function Base.sum(x::TransmissionRates, i::Int64)
  if i < 1 | i > x.individuals
    @error "Invalid individual identifier" i
  end
  return x.external[i] + sum(x.internal[:, i])
end
